
# coding: utf-8

# In[1]:


import numpy as np
import cv2
from matplotlib import pyplot as plt
import pickle

from tool_functions.feature_fuser import *

feature_path = []
rgb_path = []
true_label_path = []
size = 0

folder_path = '/home/xi/centauro_img/'
feature_file_list = os.listdir(folder_path)
for file_name in feature_file_list:
    if file_name.find('.npy') != -1:
        # print(file_name[:-13])
        rgb_p = folder_path + file_name[:-13] + '.jpg'
        label_p = folder_path + file_name[:-13] + '_label.png'
        path = file_name

        feature_path.append(folder_path + path)
        rgb_path.append(rgb_p)
        true_label_path.append(label_p)

print('feature loaded:', len(feature_path))

def process_feature(f_img):
    result_img = np.full(f_img.shape, 0, dtype=np.uint8)
    for row in range(f_img.shape[0]):
        for col in range(f_img.shape[1]):
            f_v = f_img[row, col]
            if f_v > 0.2:
                result_img[row, col] = 255

    return result_img


# In[2]:


def load_feature_file():
    count = 0
    train_features = []
    train_labels = []

    test_features = []
    test_labels = []
    
    test_index = np.random.choice(38, 2, replace=False)
    
    for (feature_file, rgb_file, l_file) in zip(feature_path, rgb_path, true_label_path):
        features_map = np.load(feature_file)
        rgb_img = cv2.imread(rgb_file, 1)
        true_label_img = cv2.imread(l_file, 0)
        
        is_train = True
        for t_i in test_index:
            if count == t_i:
                is_train = False
                break
        print(is_train, feature_file, count)
        count += 1

        # features = features_map[:,:,:-1]
        # labels =   features_map[:,:,-1]
    
        # shape = features.shape
        # features_reshaped = features.reshape(shape[0]*shape[1], shape[2])

        for row in range(size, features_map.shape[0]-size, 1+size):
            for col in range(size, features_map.shape[1]-size, 1+size):
                feature = features_map[row-size:row+size+1, col-size:col+size+1, :-1].flatten()
                label = features_map[row, col, -1]
                if label != -1 and label != 0:
                    if is_train:
                        train_features.append(feature)
                        train_labels.append(label)
                    else:
                        test_features.append(feature)
                        test_labels.append(label)
                        
    train_features = np.array(train_features)
    train_labels = np.array(train_labels)
    test_features = np.array(test_features)
    test_labels = np.array(test_labels)
    
    print(train_features.shape, test_features.shape)

    return train_features, train_labels, test_features, test_labels, test_index


# In[3]:


train_features, train_labels, test_features, test_labels, test_index = load_feature_file()


# In[4]:


from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler

scaler = StandardScaler().fit(train_features)

X_train = scaler.transform(train_features)
X_test = scaler.transform(test_features)

y_train = train_labels
y_test = test_labels

# X = StandardScaler().fit_transform(all_features)
# X_train, X_test, y_train, y_test = train_test_split(all_features, all_labels, test_size=.4, random_state=42)


# In[5]:


from sklearn.ensemble import RandomForestClassifier
clf = RandomForestClassifier(max_depth=30, n_estimators=10, max_features=1)
clf.fit(X_train, y_train)
pickle.dump(clf, open('model', 'wb'))


# In[19]:


import pickle

pickle.dump(clf, open("/home/xi/workspace/terrain_classifier/tc_model.pickle","wb"), protocol=2)
pickle.dump(scaler, open("/home/xi/workspace/terrain_classifier/tc_model_scaler.pickle","wb"), protocol=2)

# joblib.dump(clf, '/home/xi/workspace/terrain_classifier/tc_model.pickle', protocol=2)
# joblib.dump(scaler, '/home/xi/workspace/terrain_classifier/tc_model_scaler.pickle', protocol=2)

score = clf.score(X_test, y_test)
print (score)




# # In[16]:


# # clf = joblib.load('/home/xi/workspace/tc_model.pickle')
# # scalar = joblib.load('/home/xi/workspace/tc_model_scaler.pickle')
# print(scalar.mean_)


# # In[27]:


# def normalize_img(img, max_value):
    
#     img_clip = np.clip(img, 0, max_value)
    
#     img_norm = img_clip/max_value *255
    
#     return img_norm


# # In[44]:


# # for i in range(len(test_index)):
# for i in range(1, 2, 1):

#     index = test_index[i]
#     feature_file = feature_path[index]
#     rgb_file = rgb_path[index]
#     l_file = true_label_path[index]
    
#     print(feature_file)
#     features_map = np.load(feature_file)
#     stair_img = features_map[:,:,4]
#     rgb_img = cv2.imread(rgb_file, 1)
#     true_label_img = cv2.imread(l_file, 0)
    
#     plt.imshow(rgb_img)
#     plt.title('rgb')
#     plt.show()
    
#     hd = features_map[:, :, 0]
#     slope = features_map[:, :, 1]
#     roughness = features_map[:, :, 2]
#     dist = features_map[:, :, 3]
#     h_stair = features_map[:, :, 4]
    
#     hd = normalize_img(hd, 0.5)
#     slope = normalize_img(slope, 0.2)
#     roughness = normalize_img(roughness, 0.6)
#     dist = normalize_img(dist, dist.max())
#     h_stair = normalize_img(h_stair, 1)
    
#     predict_img = np.full((rgb_img.shape[0], rgb_img.shape[1]), 0, np.uint8)
    
# #     for row in range(size, features_map.shape[0]-size, 1):
# #         for col in range(size, features_map.shape[1]-size, 1):
# #             feature = features_map[row-size:row+size+1, col-size:col+size+1, :-1].flatten()
# #             feature_nromalized = scaler.transform([feature])
            
# #             label = features_map[row, col, -1]
# #             if label != -1:
# #                 label_pred = int(clf.predict(feature_nromalized)[0])
# #                 if label_pred == 4: #stair
# #                     cv2.circle(rgb_img, (col, row), 3, (255, 255, 0), -1)
# #                 if label_pred == 3: #obs
# #                     cv2.circle(rgb_img, (col, row), 3, (0, 255, 0), -1)     
# #                 if label_pred == 2: #rough
# #                     cv2.circle(rgb_img, (col, row), 3, (0, 255, 255), -1)  
# #                 if label_pred == 1: #safe
# #                     cv2.circle(rgb_img, (col, row), 3, (0, 0, 255), -1)                      
# # #                 predict_img[row, col] = label_pred*50
# # #                 print(label_pred, label)
# # #     break
    
# #     f = plt.figure()
# #     f.add_subplot(1,2, 1)
# #     plt.imshow(rgb_img)
# #     f.add_subplot(1,2, 2)
# #     plt.imshow(true_label_img)      
# #     plt.show()  

#     plt.imshow(hd, cmap='gray')
#     plt.title('high difference')
#     plt.show()

#     plt.imshow(slope, cmap='gray')
#     plt.title('slope')
#     plt.show()
    
#     plt.imshow(roughness, cmap='gray')
#     plt.title('roughness')
#     plt.show()
    
#     plt.imshow(h_stair, cmap='gray')
#     plt.title('stair detction')
#     plt.show()
    
# #     plt.imshow(true_label_img)
# #     plt.title('true_label_img picture')
# #     plt.show()        
                

