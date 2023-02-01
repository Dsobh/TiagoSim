FROM fredblgr/ubuntu-novnc:22.04
USER root

#Installation of system tools
COPY ./src/install/system_utils.sh /home/system_utils.sh
RUN chmod +x /home/system_utils.sh && /home/system_utils.sh

#Installation of needed packages
COPY ./src/install/ros_packages.sh /home/ros_packages.sh
RUN chmod +x /home/ros_packages.sh && /home/ros_packages.sh

#ROS2 (Humble) from packet installation
COPY ./src/install/ros2.sh /home/ros2.sh
RUN chmod +x /home/ros2.sh && /home/ros2.sh

#Tiago Simulation Package
COPY ./src/install/sim_package.sh /home/sim_package.sh
RUN chmod +x /home/sim_package.sh && /home/sim_package.sh

COPY ./src/others/moveit_configs_builder.py /opt/ros/humble/lib/python3.10/site-packages/moveit_configs_utils/moveit_configs_builder.py

