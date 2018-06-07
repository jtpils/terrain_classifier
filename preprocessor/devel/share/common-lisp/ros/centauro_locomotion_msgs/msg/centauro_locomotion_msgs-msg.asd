
(cl:in-package :asdf)

(defsystem "centauro_locomotion_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DrivingMovement" :depends-on ("_package_DrivingMovement"))
    (:file "_package_DrivingMovement" :depends-on ("_package"))
    (:file "TerrainClassMap" :depends-on ("_package_TerrainClassMap"))
    (:file "_package_TerrainClassMap" :depends-on ("_package"))
    (:file "LegMovementResult" :depends-on ("_package_LegMovementResult"))
    (:file "_package_LegMovementResult" :depends-on ("_package"))
    (:file "LegMovementFeedback" :depends-on ("_package_LegMovementFeedback"))
    (:file "_package_LegMovementFeedback" :depends-on ("_package"))
    (:file "LegMovementActionResult" :depends-on ("_package_LegMovementActionResult"))
    (:file "_package_LegMovementActionResult" :depends-on ("_package"))
    (:file "LegMovementAction" :depends-on ("_package_LegMovementAction"))
    (:file "_package_LegMovementAction" :depends-on ("_package"))
    (:file "LegMovementActionGoal" :depends-on ("_package_LegMovementActionGoal"))
    (:file "_package_LegMovementActionGoal" :depends-on ("_package"))
    (:file "LegMovementActionFeedback" :depends-on ("_package_LegMovementActionFeedback"))
    (:file "_package_LegMovementActionFeedback" :depends-on ("_package"))
    (:file "LegMovementGoal" :depends-on ("_package_LegMovementGoal"))
    (:file "_package_LegMovementGoal" :depends-on ("_package"))
  ))