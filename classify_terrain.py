import ros, pcl, sys, os, math, rospy, cv2
from PIL import Image as pilimg
import tf as ros_tf
from sensor_msgs.msg import Image as rosimg
from sensor_msgs.msg import PointCloud, PointCloud2, PointField
import sensor_msgs.point_cloud2 as pc2
import std_msgs.msg
import message_filters
import numpy as np
import pickle
# from tool_functions.extract_msg import *
from tool_functions.geometric_feature_extractor import *
from tool_functions.cnn_feature_extractor import *
# from tool_functions.feature_fuser import *

from ros_websocket_bridge.srv import *
from centauro_locomotion_msgs.msg import TerrainClassMap

Map_W = 20
Map_B = 20
Map_resolution = 0.05
Map_r = Map_W/Map_resolution
Map_c = Map_B/Map_resolution

pcl_pub, terrainmap_pub = [], []
TF_L = []
bridge = CvBridge()

print('loading model.....')
clf = pickle.load(open('/home/centauro/terrain_classifier/tc_model.pickle', 'rb'))
scaler = pickle.load(open('/home/centauro/terrain_classifier/tc_model_scaler.pickle', 'rb'))
print('loaded')

def publish_cloud(cloud, frame_id, publisher):
    #header
    header = std_msgs.msg.Header()
    header.stamp = rospy.Time.now()
    header.frame_id = frame_id #'base_link_oriented'
    #create pcl from points
    scaled_polygon_pcl = pc2.create_cloud_xyz32(header, cloud.to_array())
    #publish    
    publisher.publish(scaled_polygon_pcl)     

def publish_msg(msg, frame_id, publisher):
    #header
    msg.header.frame_id = frame_id
    msg.header.stamp = rospy.Time.now()
    publisher.publish(msg)   

def get_uv_from_xyz(x, y, z):
    fx, fy, cx, cy = 540.68603515625, 540.68603515625, 479.75, 269.75

    u = (fx*x) / z + cx
    v = (fy*y) / z + cy
    return u, v

def get_feature_map(cloud_list, point_row_col, trans_to_kinect, hd_cloud, slope_cloud, roughness_cloud, feature_vision, h_label_img):
    # mat44 = get_transform_matrix('kinect2_rgb_optical_frame', cloud_header.frame_id, camera_header.stamp) # get transform matrix

    point_image, uvdh_rc = [], []
    min_dist_img = np.full((540, 960), 0, np.float32)

    features_map = np.full((540, 960, 39), -1.0)

    cnn_img_size = feature_vision.shape
    scale_row = cnn_img_size[1]/float(features_map.shape[0])
    scale_col = cnn_img_size[2]/float(features_map.shape[1])

    for p, (row, col) in zip(cloud_list, point_row_col):
        p_k = np.dot(trans_to_kinect, np.array([p[0], p[1], p[2], 1.0]))[:3]
        if p_k[2] < 1:
            continue
        u, v = get_uv_from_xyz(p_k[0], p_k[1], p_k[2])
        if u < 0 or u >= 960 or v < 0 or v >= 540:
            continue

        point_image.append(p)
        dist = math.sqrt(p_k[0]*p_k[0] + p_k[1]*p_k[1] + p_k[2]*p_k[2])
        uvdh_rc.append([u, v, dist, p[2], row, col])

        u, v = int(u), int(v)
        dist_pre = min_dist_img[v, u]
        if dist_pre == 0 or dist < dist_pre:
            min_dist_img[v, u] = dist


    for (u, v, dist, height, row, col) in uvdh_rc:
        u, v, row, col = int(u), int(v), int(row), int(col)

        min_dist = min_dist_img[v, u]
        if dist > min_dist:
            continue 

        features_map[v, u, 0] = hd_cloud[row, col]
        features_map[v, u, 1] = slope_cloud[row, col]
        features_map[v, u, 2] = roughness_cloud[row, col]
        features_map[v, u, 3] = dist
        features_map[v, u, 4] = h_label_img[v, u]

        v_cnn = int(v*scale_row)
        u_cnn = int(u*scale_col)
        features_map[v, u, 5:39] = feature_vision[0, v_cnn, u_cnn, :]

        # print(v, u, features_map[v, u])
    # show_img(label_ground, 'label_test', 0)

    # cv2.imshow('label_test', label_ground)
    # cv2.waitKey(0)

    return uvdh_rc, point_image, features_map


def classify_features(features_map, rgb_img):
    # rgb_img = np.full((540, 960, 3), 0, np.uint8)

    features_map_reshape = features_map.reshape((features_map.shape[0]*features_map.shape[1], features_map.shape[2]))
    feature_nromalized = scaler.transform(features_map_reshape)
    print('predicting.....')
    label_pred = clf.predict(feature_nromalized)
    print('predected!', label_pred.shape)
    label_pred_reshaped = label_pred.reshape((features_map.shape[0], features_map.shape[1]))

    for row in range(features_map.shape[0]):
        for col in range(features_map.shape[1]):
            label_pred = label_pred_reshaped[row, col]
            
            if features_map[row, col, 0] != -1:
                if label_pred == 5: #narrow passage
                    cv2.circle(rgb_img, (col, row), 3, (255, 255, 0), -1)                
                if label_pred == 4: #stair
                    cv2.circle(rgb_img, (col, row), 3, (255, 255, 0), -1)
                if label_pred == 3: #obs
                    cv2.circle(rgb_img, (col, row), 3, (0, 0, 255), -1)     
                if label_pred == 2: #rough
                    cv2.circle(rgb_img, (col, row), 3, (0, 255, 255), -1)  
                if label_pred == 1: #safe
                    cv2.circle(rgb_img, (col, row), 3, (0, 255, 0), -1) 
                
    cv2.imshow('label', rgb_img)
    cv2.waitKey(10)

    return label_pred_reshaped


def project_to_ground(label_cam, highdiff_img, uvdh_rc, shape):

    label_ground = np.zeros(shape)

    for (u, v, dist, height, row, col) in uvdh_rc:
        u, v, row, col = int(u), int(v), int(row), int(col)

        if highdiff_img[row, col] != -1:
            label_ground[row, col] = label_cam[v, u]
        else:
            label_ground[row, col] = 0

    return label_ground


def build_terrain_map(label_img, resolution, robot_x, robot_y, cloud, trans_to_map):
    terrain_map = TerrainClassMap()

    terrain_map.num_cells_x = label_img.shape[1]
    terrain_map.num_cells_y = label_img.shape[0]
    terrain_map.resolution = resolution

    terrain_map.origin_x = robot_x - 0.5 * terrain_map.num_cells_x * resolution
    terrain_map.origin_y = robot_y - 0.5 * terrain_map.num_cells_y * resolution

    terrain_map.terrain_class = np.full(label_img.shape[1]*label_img.shape[0], 0)

    for row in range(label_img.shape[0]):
        for col in range(label_img.shape[1]):
            semantic_v = label_img[row, col]

            if semantic_v != 0:
                index = col * label_img.shape[1] + row
                terrain_map.terrain_class[index] = semantic_v

    return terrain_map


def callback(image_msg, cloud_msg, normal_msg, roughness_msg):
# def callback(image_msg, cloud_msg):

    image = bridge.imgmsg_to_cv2(image_msg)
    # cv2.imshow('ori_img', image)
    # cv2.waitKey(10)

    t_s = time.time()
    points_list, normal_list, roughness_list = [], [], []

    print('-------------------------------------------------------')
    print('message in', cloud_msg.header.stamp, image_msg.header.stamp)

    try:
        translation,rotation = TF_L.lookupTransform('kinect2_rgb_optical_frame', cloud_msg.header.frame_id, cloud_msg.header.stamp)
        trans_to_kinect = TF_L.fromTranslationRotation(translation, rotation)
        translation_tomap,rotation_tomap = TF_L.lookupTransform('map', cloud_msg.header.frame_id, cloud_msg.header.stamp)
        print(translation_tomap)
    except:
        print('tf failed')
        return
    trans_to_map = TF_L.fromTranslationRotation(translation_tomap, rotation_tomap)

    # ----------------- 1. get point cloud
    # print(cloud_data[-1], normal_data[-1], roughness_data[-1])
    for data in pc2.read_points(cloud_msg, skip_nans=False):
        points_list.append([data[0], data[1], data[2]])
    print('     loaded data', time.time() - t_s)
    t_temp = time.time()

    for data in pc2.read_points(normal_msg, skip_nans=False):
        normal_list.append([data[3], data[4], data[5]])

    for data in pc2.read_points(roughness_msg, skip_nans=False):
        roughness_list.append([data[3], data[4], data[5]])

    # ---------------- 2. compute geometric features
    print('        compute geometric features')
    hdiff_cloud, slope_cloud, roughness_cloud, obs_rgb, point_row_col, cloud_filtered = compute_geometric_features(points_list, Map_W, Map_B, \
                                                                                                                    Map_resolution, normal_list, \
                                                                                                                    roughness_list)
    print('     points in FOV', len(point_row_col))
    print('     done', time.time() - t_temp)
    t_temp = time.time()

    # ---------------- 3. get cnn features
    print('       compute CNN features')
    feature_vision = predice_image(image_msg)
    print('     done', time.time() - t_temp)
    t_temp = time.time()

    # ---------------- 4. get hakan features
    print('       compute CNN stair feature')
    stairs_service = rospy.ServiceProxy("detect_stairs",DetectStairs)
    res = stairs_service(image_msg)
    h_label_img = np.asarray(res.probability_map).reshape(res.height,res.width)
    # print(hakan_res)
    print('     done', time.time() - t_temp)
    t_temp = time.time()
    cv2.imshow('label_stair', h_label_img)
    cv2.waitKey(10)

    # folder_path = '/home/xi/centauro_img/'
    # label_path = folder_path + 'stairs_universitetet_3_0000' + '.tiff'
    # im = pilimg.open(label_path)
    # h_label_img = np.asarray(im)

    # get point uv
    print('       prediting labels')
    uvdh_rc, cloud_in_cam, features_map = get_feature_map(cloud_filtered, point_row_col, trans_to_kinect, hdiff_cloud, slope_cloud, roughness_cloud, feature_vision, h_label_img)
    label_pred = classify_features(features_map, image)
    print('     done', time.time() - t_temp)
    t_temp = time.time()

    # project to ground
    print('       projecting labels to ground')
    label_ground = project_to_ground(label_pred, hdiff_cloud, uvdh_rc, hdiff_cloud.shape)
    print('     done', time.time() - t_temp)
    t_temp = time.time()
    show_img(label_ground, 'label_test', 10)

    terrain_map = build_terrain_map(label_ground, Map_resolution, translation_tomap[0], translation_tomap[1], cloud_in_cam, trans_to_map)
    # header = std_msgs.msg.Header()
    # header.stamp = rospy.Time.now()   
    # header.frame_id = 'map' 
    terrain_map.header = cloud_msg.header
    terrainmap_pub.publish(terrain_map)
    print('####################################################')

    # #header
    header = std_msgs.msg.Header()
    header.stamp = rospy.Time.now()
    header.frame_id = cloud_msg.header.frame_id #'base_link_oriented'
    scaled_polygon_pcl = pc2.create_cloud_xyz32(header, cloud_in_cam)
    pcl_pub.publish(scaled_polygon_pcl)  
    print('done!', time.time() - t_s)


def callback_one(normal_msg):
    # print(cloud_data[-1], normal_data[-1], roughness_data[-1])
    for data in pc2.read_points(normal_msg, skip_nans=True):
        print(data)

def main(args):
    global pcl_pub, terrainmap_pub, TF_L
    rospy.init_node('classify_terrain', anonymous=True)

    TF_L = ros_tf.TransformListener()

    # rospy.Subscriber('/terrain_classifier/preprocessed/roughness', PointCloud2, callback_one)

    image_sub = message_filters.Subscriber('/terrain_classifier/preprocessed/rgb', rosimg)
    cloud_sub = message_filters.Subscriber('/terrain_classifier/preprocessed/cloud', PointCloud2)
    nromal_sub = message_filters.Subscriber('/terrain_classifier/preprocessed/normal', PointCloud2)
    roughness_sub = message_filters.Subscriber('/terrain_classifier/preprocessed/roughness', PointCloud2)
    # info_sub = message_filters.Subscriber('camera_info', CameraInfo)

    # ts = message_filters.ApproximateTimeSynchronizer([image_sub, cloud_sub], 1, 500)
    ts = message_filters.ApproximateTimeSynchronizer([image_sub, cloud_sub, nromal_sub, roughness_sub], 1, 10000)
    ts.registerCallback(callback)

    pcl_pub = rospy.Publisher('cloud_test', PointCloud2, queue_size=1)
    terrainmap_pub = rospy.Publisher('/centauro_map_client/terrain_map_kth', TerrainClassMap, queue_size=1)

    rospy.spin()

    # listener = ros_tf.TransformListener()
    # broadcaster = ros_tf.TransformBroadcaster()

    # # cloud preprocessing
    # pcl_cloud, kinect_cloud = pre_process_cloud(msg_map, msg_kcloud, Map_W/2, Map_B/2, Map_resolution)

    # cloud_kinect, cloud_icp = rotate_map_cloud(pcl_cloud, kinect_cloud)
    # publish_cloud(cloud_icp, 'kinect2_rgb_optical_frame', pcl_pub)   
    # publish_cloud(kinect_cloud, 'kinect2_rgb_optical_frame', pcl_pub_k)           
    # # publish_cloud(cloud_kinect, 'kinect2_rgb_optical_frame', pcl_pub)   

    # hdiff_img, slope_img, roughness_img, obs_rgb, point_row_col = compute_geometric_features(pcl_cloud, Map_W, Map_B, Map_resolution)
    # feature_vision = predice_image(msg_img)

    # # get point uv
    # uvdh_rc, cloud_in_cam = get_cloud_uv(pcl_cloud, cloud_kinect, point_row_col)
    # save_all_features(hdiff_img, slope_img, roughness_img, obs_rgb, uvdh_rc, feature_vision)

    # cv2.waitKey(0)

    # print('finish all rosbags')
    # rospy.spin()

if __name__ == '__main__':
    main(sys.argv)