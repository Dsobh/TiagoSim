#!/bin/bash

apt update && apt upgrade

pip3 install -U catkin_tools
pip3 install -U rosdep
apt-get install -y python3-colcon-common-extensions


