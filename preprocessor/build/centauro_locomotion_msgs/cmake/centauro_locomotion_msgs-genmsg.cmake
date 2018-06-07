# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "centauro_locomotion_msgs: 9 messages, 0 services")

set(MSG_I_FLAGS "-Icentauro_locomotion_msgs:/home/xi/workspace/terrain_classifier/preprocessor/src/centauro_locomotion_msgs/msg;-Icentauro_locomotion_msgs:/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(centauro_locomotion_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/src/centauro_locomotion_msgs/msg/DrivingMovement.msg" NAME_WE)
add_custom_target(_centauro_locomotion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "centauro_locomotion_msgs" "/home/xi/workspace/terrain_classifier/preprocessor/src/centauro_locomotion_msgs/msg/DrivingMovement.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionResult.msg" NAME_WE)
add_custom_target(_centauro_locomotion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "centauro_locomotion_msgs" "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionResult.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:centauro_locomotion_msgs/LegMovementResult"
)

get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionFeedback.msg" NAME_WE)
add_custom_target(_centauro_locomotion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "centauro_locomotion_msgs" "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:centauro_locomotion_msgs/LegMovementFeedback"
)

get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionGoal.msg" NAME_WE)
add_custom_target(_centauro_locomotion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "centauro_locomotion_msgs" "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionGoal.msg" "centauro_locomotion_msgs/LegMovementGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementGoal.msg" NAME_WE)
add_custom_target(_centauro_locomotion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "centauro_locomotion_msgs" "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementGoal.msg" ""
)

get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/src/centauro_locomotion_msgs/msg/TerrainClassMap.msg" NAME_WE)
add_custom_target(_centauro_locomotion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "centauro_locomotion_msgs" "/home/xi/workspace/terrain_classifier/preprocessor/src/centauro_locomotion_msgs/msg/TerrainClassMap.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementFeedback.msg" NAME_WE)
add_custom_target(_centauro_locomotion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "centauro_locomotion_msgs" "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementFeedback.msg" ""
)

get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementAction.msg" NAME_WE)
add_custom_target(_centauro_locomotion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "centauro_locomotion_msgs" "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementAction.msg" "centauro_locomotion_msgs/LegMovementActionGoal:centauro_locomotion_msgs/LegMovementActionFeedback:centauro_locomotion_msgs/LegMovementActionResult:centauro_locomotion_msgs/LegMovementGoal:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:centauro_locomotion_msgs/LegMovementFeedback:std_msgs/Header:centauro_locomotion_msgs/LegMovementResult"
)

get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementResult.msg" NAME_WE)
add_custom_target(_centauro_locomotion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "centauro_locomotion_msgs" "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementResult.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_cpp(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_cpp(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_cpp(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_cpp(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/src/centauro_locomotion_msgs/msg/DrivingMovement.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_cpp(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/src/centauro_locomotion_msgs/msg/TerrainClassMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_cpp(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_cpp(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionGoal.msg;/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionFeedback.msg;/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionResult.msg;/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_cpp(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/centauro_locomotion_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(centauro_locomotion_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/centauro_locomotion_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(centauro_locomotion_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(centauro_locomotion_msgs_generate_messages centauro_locomotion_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/src/centauro_locomotion_msgs/msg/DrivingMovement.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_cpp _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionResult.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_cpp _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionFeedback.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_cpp _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionGoal.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_cpp _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementGoal.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_cpp _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/src/centauro_locomotion_msgs/msg/TerrainClassMap.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_cpp _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementFeedback.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_cpp _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementAction.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_cpp _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementResult.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_cpp _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(centauro_locomotion_msgs_gencpp)
add_dependencies(centauro_locomotion_msgs_gencpp centauro_locomotion_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS centauro_locomotion_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_lisp(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_lisp(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_lisp(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_lisp(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/src/centauro_locomotion_msgs/msg/DrivingMovement.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_lisp(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/src/centauro_locomotion_msgs/msg/TerrainClassMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_lisp(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_lisp(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionGoal.msg;/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionFeedback.msg;/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionResult.msg;/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_lisp(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/centauro_locomotion_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(centauro_locomotion_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/centauro_locomotion_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(centauro_locomotion_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(centauro_locomotion_msgs_generate_messages centauro_locomotion_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/src/centauro_locomotion_msgs/msg/DrivingMovement.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_lisp _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionResult.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_lisp _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionFeedback.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_lisp _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionGoal.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_lisp _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementGoal.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_lisp _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/src/centauro_locomotion_msgs/msg/TerrainClassMap.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_lisp _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementFeedback.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_lisp _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementAction.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_lisp _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementResult.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_lisp _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(centauro_locomotion_msgs_genlisp)
add_dependencies(centauro_locomotion_msgs_genlisp centauro_locomotion_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS centauro_locomotion_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_py(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_py(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_py(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_py(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/src/centauro_locomotion_msgs/msg/DrivingMovement.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_py(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/src/centauro_locomotion_msgs/msg/TerrainClassMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_py(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_py(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionGoal.msg;/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionFeedback.msg;/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionResult.msg;/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/centauro_locomotion_msgs
)
_generate_msg_py(centauro_locomotion_msgs
  "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/centauro_locomotion_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(centauro_locomotion_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/centauro_locomotion_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(centauro_locomotion_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(centauro_locomotion_msgs_generate_messages centauro_locomotion_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/src/centauro_locomotion_msgs/msg/DrivingMovement.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_py _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionResult.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_py _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionFeedback.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_py _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionGoal.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_py _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementGoal.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_py _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/src/centauro_locomotion_msgs/msg/TerrainClassMap.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_py _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementFeedback.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_py _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementAction.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_py _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementResult.msg" NAME_WE)
add_dependencies(centauro_locomotion_msgs_generate_messages_py _centauro_locomotion_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(centauro_locomotion_msgs_genpy)
add_dependencies(centauro_locomotion_msgs_genpy centauro_locomotion_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS centauro_locomotion_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/centauro_locomotion_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/centauro_locomotion_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(centauro_locomotion_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(centauro_locomotion_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/centauro_locomotion_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/centauro_locomotion_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(centauro_locomotion_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(centauro_locomotion_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/centauro_locomotion_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/centauro_locomotion_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/centauro_locomotion_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(centauro_locomotion_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(centauro_locomotion_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
