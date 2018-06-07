; Auto-generated. Do not edit!


(cl:in-package ros_websocket_bridge-srv)


;//! \htmlinclude DetectStairs-request.msg.html

(cl:defclass <DetectStairs-request> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass DetectStairs-request (<DetectStairs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectStairs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectStairs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_websocket_bridge-srv:<DetectStairs-request> is deprecated: use ros_websocket_bridge-srv:DetectStairs-request instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <DetectStairs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_websocket_bridge-srv:image-val is deprecated.  Use ros_websocket_bridge-srv:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectStairs-request>) ostream)
  "Serializes a message object of type '<DetectStairs-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectStairs-request>) istream)
  "Deserializes a message object of type '<DetectStairs-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectStairs-request>)))
  "Returns string type for a service object of type '<DetectStairs-request>"
  "ros_websocket_bridge/DetectStairsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectStairs-request)))
  "Returns string type for a service object of type 'DetectStairs-request"
  "ros_websocket_bridge/DetectStairsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectStairs-request>)))
  "Returns md5sum for a message object of type '<DetectStairs-request>"
  "cb42ba353719440445f9489d73ea0e4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectStairs-request)))
  "Returns md5sum for a message object of type 'DetectStairs-request"
  "cb42ba353719440445f9489d73ea0e4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectStairs-request>)))
  "Returns full string definition for message of type '<DetectStairs-request>"
  (cl:format cl:nil "sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectStairs-request)))
  "Returns full string definition for message of type 'DetectStairs-request"
  (cl:format cl:nil "sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectStairs-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectStairs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectStairs-request
    (cl:cons ':image (image msg))
))
;//! \htmlinclude DetectStairs-response.msg.html

(cl:defclass <DetectStairs-response> (roslisp-msg-protocol:ros-message)
  ((probability_map
    :reader probability_map
    :initarg :probability_map
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0))
)

(cl:defclass DetectStairs-response (<DetectStairs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectStairs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectStairs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_websocket_bridge-srv:<DetectStairs-response> is deprecated: use ros_websocket_bridge-srv:DetectStairs-response instead.")))

(cl:ensure-generic-function 'probability_map-val :lambda-list '(m))
(cl:defmethod probability_map-val ((m <DetectStairs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_websocket_bridge-srv:probability_map-val is deprecated.  Use ros_websocket_bridge-srv:probability_map instead.")
  (probability_map m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <DetectStairs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_websocket_bridge-srv:height-val is deprecated.  Use ros_websocket_bridge-srv:height instead.")
  (height m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <DetectStairs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_websocket_bridge-srv:width-val is deprecated.  Use ros_websocket_bridge-srv:width instead.")
  (width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectStairs-response>) ostream)
  "Serializes a message object of type '<DetectStairs-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'probability_map))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'probability_map))
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectStairs-response>) istream)
  "Deserializes a message object of type '<DetectStairs-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'probability_map) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'probability_map)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectStairs-response>)))
  "Returns string type for a service object of type '<DetectStairs-response>"
  "ros_websocket_bridge/DetectStairsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectStairs-response)))
  "Returns string type for a service object of type 'DetectStairs-response"
  "ros_websocket_bridge/DetectStairsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectStairs-response>)))
  "Returns md5sum for a message object of type '<DetectStairs-response>"
  "cb42ba353719440445f9489d73ea0e4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectStairs-response)))
  "Returns md5sum for a message object of type 'DetectStairs-response"
  "cb42ba353719440445f9489d73ea0e4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectStairs-response>)))
  "Returns full string definition for message of type '<DetectStairs-response>"
  (cl:format cl:nil "float32[] probability_map~%int32 height~%int32 width~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectStairs-response)))
  "Returns full string definition for message of type 'DetectStairs-response"
  (cl:format cl:nil "float32[] probability_map~%int32 height~%int32 width~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectStairs-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'probability_map) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectStairs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectStairs-response
    (cl:cons ':probability_map (probability_map msg))
    (cl:cons ':height (height msg))
    (cl:cons ':width (width msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DetectStairs)))
  'DetectStairs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DetectStairs)))
  'DetectStairs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectStairs)))
  "Returns string type for a service object of type '<DetectStairs>"
  "ros_websocket_bridge/DetectStairs")