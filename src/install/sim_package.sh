#!/bin/bash

cd ~/ros2_ws/src
git clone https://github.com/pal-robotics/tiago_simulation.git

cd ~/ros2_ws

apt-get upgrade -y
colcon build
