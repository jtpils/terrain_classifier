; Auto-generated. Do not edit!


(cl:in-package centauro_locomotion_msgs-msg)


;//! \htmlinclude DrivingMovement.msg.html

(cl:defclass <DrivingMovement> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vel_x
    :reader vel_x
    :initarg :vel_x
    :type cl:float
    :initform 0.0)
   (vel_y
    :reader vel_y
    :initarg :vel_y
    :type cl:float
    :initform 0.0)
   (omega
    :reader omega
    :initarg :omega
    :type cl:float
    :initform 0.0))
)

(cl:defclass DrivingMovement (<DrivingMovement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DrivingMovement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DrivingMovement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name centauro_locomotion_msgs-msg:<DrivingMovement> is deprecated: use centauro_locomotion_msgs-msg:DrivingMovement instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DrivingMovement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:header-val is deprecated.  Use centauro_locomotion_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vel_x-val :lambda-list '(m))
(cl:defmethod vel_x-val ((m <DrivingMovement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:vel_x-val is deprecated.  Use centauro_locomotion_msgs-msg:vel_x instead.")
  (vel_x m))

(cl:ensure-generic-function 'vel_y-val :lambda-list '(m))
(cl:defmethod vel_y-val ((m <DrivingMovement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:vel_y-val is deprecated.  Use centauro_locomotion_msgs-msg:vel_y instead.")
  (vel_y m))

(cl:ensure-generic-function 'omega-val :lambda-list '(m))
(cl:defmethod omega-val ((m <DrivingMovement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:omega-val is deprecated.  Use centauro_locomotion_msgs-msg:omega instead.")
  (omega m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DrivingMovement>) ostream)
  "Serializes a message object of type '<DrivingMovement>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'omega))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DrivingMovement>) istream)
  "Deserializes a message object of type '<DrivingMovement>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omega) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DrivingMovement>)))
  "Returns string type for a message object of type '<DrivingMovement>"
  "centauro_locomotion_msgs/DrivingMovement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DrivingMovement)))
  "Returns string type for a message object of type 'DrivingMovement"
  "centauro_locomotion_msgs/DrivingMovement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DrivingMovement>)))
  "Returns md5sum for a message object of type '<DrivingMovement>"
  "eb3f3ba37e2319ebb04ef8305faf22f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DrivingMovement)))
  "Returns md5sum for a message object of type 'DrivingMovement"
  "eb3f3ba37e2319ebb04ef8305faf22f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DrivingMovement>)))
  "Returns full string definition for message of type '<DrivingMovement>"
  (cl:format cl:nil "# This message describes the desired robot center driving movement in longitudinal direction (x), ~%# lateral direction (y) and around the z_axis (omega). Leg configurations are fixed. ~%# This message will arrive in a rate between 20 and 50 Hz. If some delay occurs due to~%# steering wheels in the required direction, this is no problem.~%~%Header header~%~%float32 vel_x~%float32 vel_y~%float32 omega~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DrivingMovement)))
  "Returns full string definition for message of type 'DrivingMovement"
  (cl:format cl:nil "# This message describes the desired robot center driving movement in longitudinal direction (x), ~%# lateral direction (y) and around the z_axis (omega). Leg configurations are fixed. ~%# This message will arrive in a rate between 20 and 50 Hz. If some delay occurs due to~%# steering wheels in the required direction, this is no problem.~%~%Header header~%~%float32 vel_x~%float32 vel_y~%float32 omega~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DrivingMovement>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DrivingMovement>))
  "Converts a ROS message object to a list"
  (cl:list 'DrivingMovement
    (cl:cons ':header (header msg))
    (cl:cons ':vel_x (vel_x msg))
    (cl:cons ':vel_y (vel_y msg))
    (cl:cons ':omega (omega msg))
))
