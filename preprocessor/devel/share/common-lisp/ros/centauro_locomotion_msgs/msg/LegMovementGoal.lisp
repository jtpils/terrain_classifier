; Auto-generated. Do not edit!


(cl:in-package centauro_locomotion_msgs-msg)


;//! \htmlinclude LegMovementGoal.msg.html

(cl:defclass <LegMovementGoal> (roslisp-msg-protocol:ros-message)
  ((goal_pos_fl_x
    :reader goal_pos_fl_x
    :initarg :goal_pos_fl_x
    :type cl:float
    :initform 0.0)
   (goal_pos_fl_y
    :reader goal_pos_fl_y
    :initarg :goal_pos_fl_y
    :type cl:float
    :initform 0.0)
   (goal_pos_fl_z
    :reader goal_pos_fl_z
    :initarg :goal_pos_fl_z
    :type cl:float
    :initform 0.0)
   (wheel_rotation_enabled_fl
    :reader wheel_rotation_enabled_fl
    :initarg :wheel_rotation_enabled_fl
    :type cl:boolean
    :initform cl:nil)
   (goal_pos_bl_x
    :reader goal_pos_bl_x
    :initarg :goal_pos_bl_x
    :type cl:float
    :initform 0.0)
   (goal_pos_bl_y
    :reader goal_pos_bl_y
    :initarg :goal_pos_bl_y
    :type cl:float
    :initform 0.0)
   (goal_pos_bl_z
    :reader goal_pos_bl_z
    :initarg :goal_pos_bl_z
    :type cl:float
    :initform 0.0)
   (wheel_rotation_enabled_bl
    :reader wheel_rotation_enabled_bl
    :initarg :wheel_rotation_enabled_bl
    :type cl:boolean
    :initform cl:nil)
   (goal_pos_br_x
    :reader goal_pos_br_x
    :initarg :goal_pos_br_x
    :type cl:float
    :initform 0.0)
   (goal_pos_br_y
    :reader goal_pos_br_y
    :initarg :goal_pos_br_y
    :type cl:float
    :initform 0.0)
   (goal_pos_br_z
    :reader goal_pos_br_z
    :initarg :goal_pos_br_z
    :type cl:float
    :initform 0.0)
   (wheel_rotation_enabled_br
    :reader wheel_rotation_enabled_br
    :initarg :wheel_rotation_enabled_br
    :type cl:boolean
    :initform cl:nil)
   (goal_pos_fr_x
    :reader goal_pos_fr_x
    :initarg :goal_pos_fr_x
    :type cl:float
    :initform 0.0)
   (goal_pos_fr_y
    :reader goal_pos_fr_y
    :initarg :goal_pos_fr_y
    :type cl:float
    :initform 0.0)
   (goal_pos_fr_z
    :reader goal_pos_fr_z
    :initarg :goal_pos_fr_z
    :type cl:float
    :initform 0.0)
   (wheel_rotation_enabled_fr
    :reader wheel_rotation_enabled_fr
    :initarg :wheel_rotation_enabled_fr
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LegMovementGoal (<LegMovementGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LegMovementGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LegMovementGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name centauro_locomotion_msgs-msg:<LegMovementGoal> is deprecated: use centauro_locomotion_msgs-msg:LegMovementGoal instead.")))

(cl:ensure-generic-function 'goal_pos_fl_x-val :lambda-list '(m))
(cl:defmethod goal_pos_fl_x-val ((m <LegMovementGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:goal_pos_fl_x-val is deprecated.  Use centauro_locomotion_msgs-msg:goal_pos_fl_x instead.")
  (goal_pos_fl_x m))

(cl:ensure-generic-function 'goal_pos_fl_y-val :lambda-list '(m))
(cl:defmethod goal_pos_fl_y-val ((m <LegMovementGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:goal_pos_fl_y-val is deprecated.  Use centauro_locomotion_msgs-msg:goal_pos_fl_y instead.")
  (goal_pos_fl_y m))

(cl:ensure-generic-function 'goal_pos_fl_z-val :lambda-list '(m))
(cl:defmethod goal_pos_fl_z-val ((m <LegMovementGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:goal_pos_fl_z-val is deprecated.  Use centauro_locomotion_msgs-msg:goal_pos_fl_z instead.")
  (goal_pos_fl_z m))

(cl:ensure-generic-function 'wheel_rotation_enabled_fl-val :lambda-list '(m))
(cl:defmethod wheel_rotation_enabled_fl-val ((m <LegMovementGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:wheel_rotation_enabled_fl-val is deprecated.  Use centauro_locomotion_msgs-msg:wheel_rotation_enabled_fl instead.")
  (wheel_rotation_enabled_fl m))

(cl:ensure-generic-function 'goal_pos_bl_x-val :lambda-list '(m))
(cl:defmethod goal_pos_bl_x-val ((m <LegMovementGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:goal_pos_bl_x-val is deprecated.  Use centauro_locomotion_msgs-msg:goal_pos_bl_x instead.")
  (goal_pos_bl_x m))

(cl:ensure-generic-function 'goal_pos_bl_y-val :lambda-list '(m))
(cl:defmethod goal_pos_bl_y-val ((m <LegMovementGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:goal_pos_bl_y-val is deprecated.  Use centauro_locomotion_msgs-msg:goal_pos_bl_y instead.")
  (goal_pos_bl_y m))

(cl:ensure-generic-function 'goal_pos_bl_z-val :lambda-list '(m))
(cl:defmethod goal_pos_bl_z-val ((m <LegMovementGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:goal_pos_bl_z-val is deprecated.  Use centauro_locomotion_msgs-msg:goal_pos_bl_z instead.")
  (goal_pos_bl_z m))

(cl:ensure-generic-function 'wheel_rotation_enabled_bl-val :lambda-list '(m))
(cl:defmethod wheel_rotation_enabled_bl-val ((m <LegMovementGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:wheel_rotation_enabled_bl-val is deprecated.  Use centauro_locomotion_msgs-msg:wheel_rotation_enabled_bl instead.")
  (wheel_rotation_enabled_bl m))

(cl:ensure-generic-function 'goal_pos_br_x-val :lambda-list '(m))
(cl:defmethod goal_pos_br_x-val ((m <LegMovementGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:goal_pos_br_x-val is deprecated.  Use centauro_locomotion_msgs-msg:goal_pos_br_x instead.")
  (goal_pos_br_x m))

(cl:ensure-generic-function 'goal_pos_br_y-val :lambda-list '(m))
(cl:defmethod goal_pos_br_y-val ((m <LegMovementGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:goal_pos_br_y-val is deprecated.  Use centauro_locomotion_msgs-msg:goal_pos_br_y instead.")
  (goal_pos_br_y m))

(cl:ensure-generic-function 'goal_pos_br_z-val :lambda-list '(m))
(cl:defmethod goal_pos_br_z-val ((m <LegMovementGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:goal_pos_br_z-val is deprecated.  Use centauro_locomotion_msgs-msg:goal_pos_br_z instead.")
  (goal_pos_br_z m))

(cl:ensure-generic-function 'wheel_rotation_enabled_br-val :lambda-list '(m))
(cl:defmethod wheel_rotation_enabled_br-val ((m <LegMovementGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:wheel_rotation_enabled_br-val is deprecated.  Use centauro_locomotion_msgs-msg:wheel_rotation_enabled_br instead.")
  (wheel_rotation_enabled_br m))

(cl:ensure-generic-function 'goal_pos_fr_x-val :lambda-list '(m))
(cl:defmethod goal_pos_fr_x-val ((m <LegMovementGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:goal_pos_fr_x-val is deprecated.  Use centauro_locomotion_msgs-msg:goal_pos_fr_x instead.")
  (goal_pos_fr_x m))

(cl:ensure-generic-function 'goal_pos_fr_y-val :lambda-list '(m))
(cl:defmethod goal_pos_fr_y-val ((m <LegMovementGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:goal_pos_fr_y-val is deprecated.  Use centauro_locomotion_msgs-msg:goal_pos_fr_y instead.")
  (goal_pos_fr_y m))

(cl:ensure-generic-function 'goal_pos_fr_z-val :lambda-list '(m))
(cl:defmethod goal_pos_fr_z-val ((m <LegMovementGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:goal_pos_fr_z-val is deprecated.  Use centauro_locomotion_msgs-msg:goal_pos_fr_z instead.")
  (goal_pos_fr_z m))

(cl:ensure-generic-function 'wheel_rotation_enabled_fr-val :lambda-list '(m))
(cl:defmethod wheel_rotation_enabled_fr-val ((m <LegMovementGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader centauro_locomotion_msgs-msg:wheel_rotation_enabled_fr-val is deprecated.  Use centauro_locomotion_msgs-msg:wheel_rotation_enabled_fr instead.")
  (wheel_rotation_enabled_fr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LegMovementGoal>) ostream)
  "Serializes a message object of type '<LegMovementGoal>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goal_pos_fl_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goal_pos_fl_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goal_pos_fl_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wheel_rotation_enabled_fl) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goal_pos_bl_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goal_pos_bl_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goal_pos_bl_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wheel_rotation_enabled_bl) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goal_pos_br_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goal_pos_br_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goal_pos_br_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wheel_rotation_enabled_br) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goal_pos_fr_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goal_pos_fr_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goal_pos_fr_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wheel_rotation_enabled_fr) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LegMovementGoal>) istream)
  "Deserializes a message object of type '<LegMovementGoal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_pos_fl_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_pos_fl_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_pos_fl_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'wheel_rotation_enabled_fl) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_pos_bl_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_pos_bl_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_pos_bl_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'wheel_rotation_enabled_bl) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_pos_br_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_pos_br_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_pos_br_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'wheel_rotation_enabled_br) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_pos_fr_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_pos_fr_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_pos_fr_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'wheel_rotation_enabled_fr) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LegMovementGoal>)))
  "Returns string type for a message object of type '<LegMovementGoal>"
  "centauro_locomotion_msgs/LegMovementGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LegMovementGoal)))
  "Returns string type for a message object of type 'LegMovementGoal"
  "centauro_locomotion_msgs/LegMovementGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LegMovementGoal>)))
  "Returns md5sum for a message object of type '<LegMovementGoal>"
  "3ca7b1bbc5861ddc981466bbe2d8e8d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LegMovementGoal)))
  "Returns md5sum for a message object of type 'LegMovementGoal"
  "3ca7b1bbc5861ddc981466bbe2d8e8d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LegMovementGoal>)))
  "Returns full string definition for message of type '<LegMovementGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# ROS Action which defines endeffector positions for all four legs in cartesian space~%# relative to the robot base center. (fl = front left, br = back right ...). Each wheel is oriented forward and is perpendicular~%# to the ground. The bool flag \"wheel_rotation_enabled\" describes if the wheel is free to rotate or if wheel rotation is inhibited.~%# The result is an empty message but has to be sent to signalize that the desired configuration is reached.~%~%# Goal: longitudinal wheel coordinate~%float32 goal_pos_fl_x~%float32 goal_pos_fl_y~%float32 goal_pos_fl_z~%bool wheel_rotation_enabled_fl~%~%float32 goal_pos_bl_x~%float32 goal_pos_bl_y~%float32 goal_pos_bl_z~%bool wheel_rotation_enabled_bl~%~%float32 goal_pos_br_x~%float32 goal_pos_br_y~%float32 goal_pos_br_z~%bool wheel_rotation_enabled_br~%~%float32 goal_pos_fr_x~%float32 goal_pos_fr_y~%float32 goal_pos_fr_z~%bool wheel_rotation_enabled_fr~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LegMovementGoal)))
  "Returns full string definition for message of type 'LegMovementGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# ROS Action which defines endeffector positions for all four legs in cartesian space~%# relative to the robot base center. (fl = front left, br = back right ...). Each wheel is oriented forward and is perpendicular~%# to the ground. The bool flag \"wheel_rotation_enabled\" describes if the wheel is free to rotate or if wheel rotation is inhibited.~%# The result is an empty message but has to be sent to signalize that the desired configuration is reached.~%~%# Goal: longitudinal wheel coordinate~%float32 goal_pos_fl_x~%float32 goal_pos_fl_y~%float32 goal_pos_fl_z~%bool wheel_rotation_enabled_fl~%~%float32 goal_pos_bl_x~%float32 goal_pos_bl_y~%float32 goal_pos_bl_z~%bool wheel_rotation_enabled_bl~%~%float32 goal_pos_br_x~%float32 goal_pos_br_y~%float32 goal_pos_br_z~%bool wheel_rotation_enabled_br~%~%float32 goal_pos_fr_x~%float32 goal_pos_fr_y~%float32 goal_pos_fr_z~%bool wheel_rotation_enabled_fr~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LegMovementGoal>))
  (cl:+ 0
     4
     4
     4
     1
     4
     4
     4
     1
     4
     4
     4
     1
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LegMovementGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'LegMovementGoal
    (cl:cons ':goal_pos_fl_x (goal_pos_fl_x msg))
    (cl:cons ':goal_pos_fl_y (goal_pos_fl_y msg))
    (cl:cons ':goal_pos_fl_z (goal_pos_fl_z msg))
    (cl:cons ':wheel_rotation_enabled_fl (wheel_rotation_enabled_fl msg))
    (cl:cons ':goal_pos_bl_x (goal_pos_bl_x msg))
    (cl:cons ':goal_pos_bl_y (goal_pos_bl_y msg))
    (cl:cons ':goal_pos_bl_z (goal_pos_bl_z msg))
    (cl:cons ':wheel_rotation_enabled_bl (wheel_rotation_enabled_bl msg))
    (cl:cons ':goal_pos_br_x (goal_pos_br_x msg))
    (cl:cons ':goal_pos_br_y (goal_pos_br_y msg))
    (cl:cons ':goal_pos_br_z (goal_pos_br_z msg))
    (cl:cons ':wheel_rotation_enabled_br (wheel_rotation_enabled_br msg))
    (cl:cons ':goal_pos_fr_x (goal_pos_fr_x msg))
    (cl:cons ':goal_pos_fr_y (goal_pos_fr_y msg))
    (cl:cons ':goal_pos_fr_z (goal_pos_fr_z msg))
    (cl:cons ':wheel_rotation_enabled_fr (wheel_rotation_enabled_fr msg))
))
