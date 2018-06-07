# Install script for directory: /home/xi/workspace/terrain_classifier/preprocessor/src/centauro_locomotion_msgs

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/xi/workspace/terrain_classifier/preprocessor/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/centauro_locomotion_msgs/msg" TYPE FILE FILES
    "/home/xi/workspace/terrain_classifier/preprocessor/src/centauro_locomotion_msgs/msg/DrivingMovement.msg"
    "/home/xi/workspace/terrain_classifier/preprocessor/src/centauro_locomotion_msgs/msg/TerrainClassMap.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/centauro_locomotion_msgs/action" TYPE FILE FILES "/home/xi/workspace/terrain_classifier/preprocessor/src/centauro_locomotion_msgs/action/LegMovement.action")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/centauro_locomotion_msgs/msg" TYPE FILE FILES
    "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementAction.msg"
    "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionGoal.msg"
    "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionResult.msg"
    "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementActionFeedback.msg"
    "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementGoal.msg"
    "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementResult.msg"
    "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/centauro_locomotion_msgs/msg/LegMovementFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/centauro_locomotion_msgs/cmake" TYPE FILE FILES "/home/xi/workspace/terrain_classifier/preprocessor/build/centauro_locomotion_msgs/catkin_generated/installspace/centauro_locomotion_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/xi/workspace/terrain_classifier/preprocessor/devel/include/centauro_locomotion_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/xi/workspace/terrain_classifier/preprocessor/devel/share/common-lisp/ros/centauro_locomotion_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/xi/workspace/terrain_classifier/preprocessor/devel/lib/python2.7/dist-packages/centauro_locomotion_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/xi/workspace/terrain_classifier/preprocessor/devel/lib/python2.7/dist-packages/centauro_locomotion_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/xi/workspace/terrain_classifier/preprocessor/build/centauro_locomotion_msgs/catkin_generated/installspace/centauro_locomotion_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/centauro_locomotion_msgs/cmake" TYPE FILE FILES "/home/xi/workspace/terrain_classifier/preprocessor/build/centauro_locomotion_msgs/catkin_generated/installspace/centauro_locomotion_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/centauro_locomotion_msgs/cmake" TYPE FILE FILES
    "/home/xi/workspace/terrain_classifier/preprocessor/build/centauro_locomotion_msgs/catkin_generated/installspace/centauro_locomotion_msgsConfig.cmake"
    "/home/xi/workspace/terrain_classifier/preprocessor/build/centauro_locomotion_msgs/catkin_generated/installspace/centauro_locomotion_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/centauro_locomotion_msgs" TYPE FILE FILES "/home/xi/workspace/terrain_classifier/preprocessor/src/centauro_locomotion_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

