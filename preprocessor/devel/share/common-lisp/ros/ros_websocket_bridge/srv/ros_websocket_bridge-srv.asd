
(cl:in-package :asdf)

(defsystem "ros_websocket_bridge-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "DetectStairs" :depends-on ("_package_DetectStairs"))
    (:file "_package_DetectStairs" :depends-on ("_package"))
  ))