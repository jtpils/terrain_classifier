# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_websocket_bridge: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_websocket_bridge_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/src/ros_websocket_bridge/srv/DetectStairs.srv" NAME_WE)
add_custom_target(_ros_websocket_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_websocket_bridge" "/home/xi/workspace/terrain_classifier/preprocessor/src/ros_websocket_bridge/srv/DetectStairs.srv" "std_msgs/Header:sensor_msgs/Image"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(ros_websocket_bridge
  "/home/xi/workspace/terrain_classifier/preprocessor/src/ros_websocket_bridge/srv/DetectStairs.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_websocket_bridge
)

### Generating Module File
_generate_module_cpp(ros_websocket_bridge
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_websocket_bridge
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_websocket_bridge_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_websocket_bridge_generate_messages ros_websocket_bridge_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/src/ros_websocket_bridge/srv/DetectStairs.srv" NAME_WE)
add_dependencies(ros_websocket_bridge_generate_messages_cpp _ros_websocket_bridge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_websocket_bridge_gencpp)
add_dependencies(ros_websocket_bridge_gencpp ros_websocket_bridge_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_websocket_bridge_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(ros_websocket_bridge
  "/home/xi/workspace/terrain_classifier/preprocessor/src/ros_websocket_bridge/srv/DetectStairs.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_websocket_bridge
)

### Generating Module File
_generate_module_lisp(ros_websocket_bridge
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_websocket_bridge
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_websocket_bridge_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_websocket_bridge_generate_messages ros_websocket_bridge_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/src/ros_websocket_bridge/srv/DetectStairs.srv" NAME_WE)
add_dependencies(ros_websocket_bridge_generate_messages_lisp _ros_websocket_bridge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_websocket_bridge_genlisp)
add_dependencies(ros_websocket_bridge_genlisp ros_websocket_bridge_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_websocket_bridge_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(ros_websocket_bridge
  "/home/xi/workspace/terrain_classifier/preprocessor/src/ros_websocket_bridge/srv/DetectStairs.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_websocket_bridge
)

### Generating Module File
_generate_module_py(ros_websocket_bridge
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_websocket_bridge
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_websocket_bridge_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_websocket_bridge_generate_messages ros_websocket_bridge_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xi/workspace/terrain_classifier/preprocessor/src/ros_websocket_bridge/srv/DetectStairs.srv" NAME_WE)
add_dependencies(ros_websocket_bridge_generate_messages_py _ros_websocket_bridge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_websocket_bridge_genpy)
add_dependencies(ros_websocket_bridge_genpy ros_websocket_bridge_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_websocket_bridge_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_websocket_bridge)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_websocket_bridge
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ros_websocket_bridge_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(ros_websocket_bridge_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_websocket_bridge)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_websocket_bridge
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ros_websocket_bridge_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(ros_websocket_bridge_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_websocket_bridge)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_websocket_bridge\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_websocket_bridge
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ros_websocket_bridge_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(ros_websocket_bridge_generate_messages_py sensor_msgs_generate_messages_py)
endif()
