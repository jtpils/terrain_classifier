; Auto-generated. Do not edit!


(cl:in-package centauro_locomotion_msgs-msg)


;//! \htmlinclude TerrainClassMap.msg.html

(cl:defclass <TerrainClassMap> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (num_cells_x
    :reader num_cells_x
    :initarg :num_cells_x
    :type cl:integer
    :initform 0)
   (num_cells_y
    :reader num_cells_y
    :initarg :num_cells_y
    :type cl:integer
    :initform 0)
   (origin_x
    :reader origin_x
    :initarg :origin_x
    :type cl:float
    :initform 0.0)
   (origin_y
    :reader origin_y
    :initarg :origin_y
    :type cl:float
    :initform 0.0)
   (resolution
    :reader resolution
    :initarg :resolution
    :type cl:float
    :initform 0.0)
   (terrain_class
    :reader terrain_class
    :initarg :terrain_class
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass TerrainClassMap (<TerrainClassMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TerrainClassMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TerrainClassMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name centauro_locomotion_msgs-msg:<TerrainClassMap> is deprecated: use centauro_locomotion_msgs-msg:TerrainClassMap instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TerrainClassMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:header-val is deprecated.  Use centauro_locomotion_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'num_cells_x-val :lambda-list '(m))
(cl:defmethod num_cells_x-val ((m <TerrainClassMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:num_cells_x-val is deprecated.  Use centauro_locomotion_msgs-msg:num_cells_x instead.")
  (num_cells_x m))

(cl:ensure-generic-function 'num_cells_y-val :lambda-list '(m))
(cl:defmethod num_cells_y-val ((m <TerrainClassMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:num_cells_y-val is deprecated.  Use centauro_locomotion_msgs-msg:num_cells_y instead.")
  (num_cells_y m))

(cl:ensure-generic-function 'origin_x-val :lambda-list '(m))
(cl:defmethod origin_x-val ((m <TerrainClassMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:origin_x-val is deprecated.  Use centauro_locomotion_msgs-msg:origin_x instead.")
  (origin_x m))

(cl:ensure-generic-function 'origin_y-val :lambda-list '(m))
(cl:defmethod origin_y-val ((m <TerrainClassMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:origin_y-val is deprecated.  Use centauro_locomotion_msgs-msg:origin_y instead.")
  (origin_y m))

(cl:ensure-generic-function 'resolution-val :lambda-list '(m))
(cl:defmethod resolution-val ((m <TerrainClassMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:resolution-val is deprecated.  Use centauro_locomotion_msgs-msg:resolution instead.")
  (resolution m))

(cl:ensure-generic-function 'terrain_class-val :lambda-list '(m))
(cl:defmethod terrain_class-val ((m <TerrainClassMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:terrain_class-val is deprecated.  Use centauro_locomotion_msgs-msg:terrain_class instead.")
  (terrain_class m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TerrainClassMap>) ostream)
  "Serializes a message object of type '<TerrainClassMap>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_cells_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_cells_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_cells_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_cells_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_cells_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_cells_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_cells_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_cells_y)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'origin_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'origin_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'terrain_class))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'terrain_class))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TerrainClassMap>) istream)
  "Deserializes a message object of type '<TerrainClassMap>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_cells_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_cells_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_cells_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_cells_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_cells_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_cells_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_cells_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_cells_y)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'origin_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'origin_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'resolution) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'terrain_class) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'terrain_class)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TerrainClassMap>)))
  "Returns string type for a message object of type '<TerrainClassMap>"
  "centauro_locomotion_msgs/TerrainClassMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TerrainClassMap)))
  "Returns string type for a message object of type 'TerrainClassMap"
  "centauro_locomotion_msgs/TerrainClassMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TerrainClassMap>)))
  "Returns md5sum for a message object of type '<TerrainClassMap>"
  "680c0bea5d8ebb060be0a31a74be2125")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TerrainClassMap)))
  "Returns md5sum for a message object of type 'TerrainClassMap"
  "680c0bea5d8ebb060be0a31a74be2125")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TerrainClassMap>)))
  "Returns full string definition for message of type '<TerrainClassMap>"
  (cl:format cl:nil "# terrain classes from visual terrain classification~%# 0 = free~%# 1 = rough~%# 2 = obstacle~%# 3 = stairs~%# 4 = narrow section~%~%Header header~%~%# Size in cells~%uint32 num_cells_x~%uint32 num_cells_y~%~%# Cell coordinates of (0,0)~%float32 origin_x~%float32 origin_y~%~%# Resolution (m / cell)~%float32 resolution~%~%# Height values per cell (row step: cells_x)~%uint32[] terrain_class~% ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TerrainClassMap)))
  "Returns full string definition for message of type 'TerrainClassMap"
  (cl:format cl:nil "# terrain classes from visual terrain classification~%# 0 = free~%# 1 = rough~%# 2 = obstacle~%# 3 = stairs~%# 4 = narrow section~%~%Header header~%~%# Size in cells~%uint32 num_cells_x~%uint32 num_cells_y~%~%# Cell coordinates of (0,0)~%float32 origin_x~%float32 origin_y~%~%# Resolution (m / cell)~%float32 resolution~%~%# Height values per cell (row step: cells_x)~%uint32[] terrain_class~% ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TerrainClassMap>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'terrain_class) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TerrainClassMap>))
  "Converts a ROS message object to a list"
  (cl:list 'TerrainClassMap
    (cl:cons ':header (header msg))
    (cl:cons ':num_cells_x (num_cells_x msg))
    (cl:cons ':num_cells_y (num_cells_y msg))
    (cl:cons ':origin_x (origin_x msg))
    (cl:cons ':origin_y (origin_y msg))
    (cl:cons ':resolution (resolution msg))
    (cl:cons ':terrain_class (terrain_class msg))
))
