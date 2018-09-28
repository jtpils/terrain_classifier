#!/bin/bash
. /opt/ros/kinetic/setup.bash
. /home/xi/workspace/terrain_classifier/preprocessor/devel/setup.bash --extend

rosrun ros_websocket_bridge stairs_detector.py --host 130.237.218.86 --port 5000

