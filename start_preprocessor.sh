#!/bin/bash
. /opt/ros/kinetic/setup.bash
. ~/terrain_classifier/preprocessor/devel/setup.bash --extend

rosrun preprocessor cloud_preprocessor


