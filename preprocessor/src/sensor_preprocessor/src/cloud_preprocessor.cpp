#include "ros/ros.h"
#include "pcl_ros/point_cloud.h"
#include <pcl/filters/passthrough.h>
#include <pcl/filters/voxel_grid.h>
#include <image_transport/image_transport.h>
#include <pcl/features/normal_3d_omp.h>
#include <pcl/features/don.h>



using namespace std;

float Map_W = 20;
float Map_B = 20;
float Map_resolution = 0.1;

ros::Publisher _pub_cloud, _pub_normal, _pub_don;
image_transport::Publisher _pub_img;
sensor_msgs::ImageConstPtr img_in_msg;
bool image_ready = false;

void imageCallback(const sensor_msgs::ImageConstPtr& image_msg)
{
    img_in_msg = image_msg;
    // cout << "image in" << endl;
}

pcl::PointCloud<pcl::PointNormal>::Ptr calculateSurfaceNormal(pcl::PointCloud<pcl::PointXYZ>::Ptr input_point,
                                                         pcl::PointCloud<pcl::PointXYZ>::Ptr search_point,
                                                         float searchRadius )
{
    pcl::NormalEstimationOMP<pcl::PointXYZ, pcl::PointNormal> ne;
    ne.setInputCloud (input_point);
    ne.setSearchSurface(search_point);

    pcl::search::KdTree<pcl::PointXYZ>::Ptr tree (new pcl::search::KdTree<pcl::PointXYZ> ());
    ne.setSearchMethod (tree);

    pcl::PointCloud<pcl::PointNormal>::Ptr cloud_normals (new pcl::PointCloud<pcl::PointNormal>);

    ne.setRadiusSearch (searchRadius);
    ne.setViewPoint (0, 0, 2);
    ne.compute (*cloud_normals);

    return cloud_normals;
}

void publish(ros::Publisher pub, pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud)
{
    sensor_msgs::PointCloud2 pointlcoud2;
    pcl::toROSMsg(*cloud, pointlcoud2);

    pub.publish(pointlcoud2);
}

pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_filter(pcl::PointCloud<pcl::PointXYZ>::Ptr input_cloud)
{
    // cout << "before filter  " << input_cloud->points.size() << endl;

    pcl::PassThrough<pcl::PointXYZ> pass;
    pass.setInputCloud (input_cloud);
    pass.setFilterFieldName ("x");
    pass.setFilterLimits (0, Map_W/2);
    pass.filter (*input_cloud);
    // cout << "after x filter  " << cloud_passthrough->points.size() << endl;

    pass.setInputCloud (input_cloud);
    pass.setFilterFieldName ("y");
    pass.setFilterLimits (-Map_W/2, Map_W/2);
    pass.filter (*input_cloud);
    // cout << "after y filter  " << cloud_passthrough->points.size() << endl;

    pass.setInputCloud (input_cloud);
    pass.setFilterFieldName ("z");
    pass.setFilterLimits (-Map_W/2, Map_W/2);
    pass.filter (*input_cloud);

    pcl::VoxelGrid<pcl::PointXYZ> sor;
    sor.setInputCloud (input_cloud);
    sor.setLeafSize (Map_resolution*0.8, Map_resolution*0.8, Map_resolution*0.8);
    sor.filter (*input_cloud);
    // cout << "after filter  " << input_cloud->points.size() << endl;
    return input_cloud;
}

void callback_cloud(const sensor_msgs::PointCloud2ConstPtr &cloud_in)
{
    // cout << "cloud in" << endl;
    sensor_msgs::ImageConstPtr mapped_img_msg = img_in_msg;

    // pcl::PointCloud<pcl::PointXYZ> pcl_cloud_in;
    pcl::PointCloud<pcl::PointXYZ>::Ptr  pcl_cloud_in        (new pcl::PointCloud<pcl::PointXYZ>);

    pcl::fromROSMsg(*cloud_in, *pcl_cloud_in);
    
    // pcl::PointCloud<pcl::PointXYZ>::Ptr  pcl_cloud_in_ptr      (new pcl::PointCloud<pcl::PointXYZ>(pcl_cloud_in));
    pcl::PointCloud<pcl::PointXYZ>::Ptr  cloud_filtered        (new pcl::PointCloud<pcl::PointXYZ>);

    // 1. filter point cloud by map size and voxel
    cloud_filtered = cloud_filter(pcl_cloud_in);

    // 2. compute normals
    pcl::PointCloud<pcl::PointNormal>::Ptr       normal_large        (new pcl::PointCloud<pcl::PointNormal>);
    pcl::PointCloud<pcl::PointNormal>::Ptr       normal_small        (new pcl::PointCloud<pcl::PointNormal>);
    normal_large = calculateSurfaceNormal(cloud_filtered, pcl_cloud_in, Map_resolution*4);
    normal_small = calculateSurfaceNormal(cloud_filtered, pcl_cloud_in, Map_resolution);

    // 3. compute don
    pcl::PointCloud<pcl::PointNormal>::Ptr       doncloud (new pcl::PointCloud<pcl::PointNormal>);
    pcl::copyPointCloud<pcl::PointXYZ, pcl::PointNormal>(*cloud_filtered, *doncloud);

    pcl::DifferenceOfNormalsEstimation<pcl::PointXYZ, pcl::PointNormal, pcl::PointNormal> don;
    don.setInputCloud (cloud_filtered);
    don.setNormalScaleLarge (normal_large);
    don.setNormalScaleSmall (normal_small);
    don.computeFeature (*doncloud);



    // cout << cloud_filtered->points[1].x << "  " << cloud_filtered->points[1].y << "  " << cloud_filtered->points[1].z<< endl;
    // cout << normal_large->points[1].normal[0] << "  " << normal_large->points[1].normal[1] << "  " << normal_large->points[1].normal[2]<< endl;
    // cout << doncloud->points[1].normal[0] << "  " << doncloud->points[1].normal[1] << "  " << doncloud->points[1].normal[2]<< endl;   

    // 4. publish pointcloud, large normal, don and rgb image
    // cloud_filtered->header.stamp = cloud_in->header.stamp;

    sensor_msgs::PointCloud2 cloud_msg, normal_msg, roughness_msg;
    pcl::toROSMsg(*cloud_filtered, cloud_msg);
    pcl::toROSMsg(*normal_large, normal_msg);
    pcl::toROSMsg(*doncloud, roughness_msg);

    // _pub_normal.publish(normal_msg);
    cout << cloud_msg.header.stamp << " " << mapped_img_msg->header.stamp << endl;


    _pub_cloud.publish(cloud_msg);
    _pub_img.publish(*mapped_img_msg);
    _pub_normal.publish(normal_msg);
    _pub_don.publish(roughness_msg);
    // _pub.publish(mapped_cloud_msg);
    cout << "done" << endl;
}


int main(int argc, char **argv)
{
    ros::init(argc, argv, "sensor_preprocessor");
    ros::NodeHandle node; 
    // std::string topic = node.resolveName("preprocessed_cloud");
    // std::string topic_kinect = node.resolveName("preprocessed_kinect");

    cout << "start" << endl;

    image_transport::ImageTransport it(node);
    image_transport::Subscriber sub_raw = it.subscribe("/kinect2/qhd/image_color", 1, imageCallback);
    ros::Subscriber sub_cloud = node.subscribe<sensor_msgs::PointCloud2>("/mapping_nodelet/pointcloud", 1, callback_cloud);
    
    // _pub_cloud = node.advertise<sensor_msgs::PointCloud2> ("/terrain_classifier/preprocessed/cloud", 1);
    // _pub_normal = node.advertise<sensor_msgs::PointCloud2> ("/terrain_classifier/preprocessed/normal", 1);
    // _pub_don = node.advertise<sensor_msgs::PointCloud2> ("/terrain_classifier/preprocessed/roughness", 1);

    _pub_cloud = node.advertise<pcl::PointCloud<pcl::PointXYZ> > ("/terrain_classifier/preprocessed/cloud", 1);
    _pub_normal = node.advertise<pcl::PointCloud<pcl::PointNormal> > ("/terrain_classifier/preprocessed/normal", 1);
    _pub_don = node.advertise<pcl::PointCloud<pcl::PointNormal> > ("/terrain_classifier/preprocessed/roughness", 1);

    _pub_img = it.advertise("/terrain_classifier/preprocessed/rgb", 1);
    // _pub_kinect = nh.advertise<sensor_msgs::PointCloud2> (topic_kinect, 1);

    ros::spin();
    // and just publish the object directly
    // pub.publish(cloud);

    return 0;
}
