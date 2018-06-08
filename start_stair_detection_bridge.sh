#!/bin/bash
. /opt/ros/kinetic/setup.bash
. ~/terrain_classifier/preprocessor/devel/setup.bash --extend

rosrun ros_websocket_bridge stairs_detector.py --host 131.220.7.42 --port 5000

