#!/bin/bash

sudo apt-get update -y 

sudo apt-get install -y git python3-vcstool python3-rosinstall python3-rosdep python3-colcon-common-extensions

mkdir -p home/tiago_public_ws/src
cd home/tiago_public_ws
vcs import --input https://raw.githubusercontent.com/pal-robotics/tiago_tutorials/humble-devel/tiago_public.repos src

rosdep init
rosdep update
rosdep install --from-paths src --rosdistro=${ROS_DISTRO} -y --ignore-src

source /opt/ros/humble/setup.bash
colcon build
