# TiagoSim

This docker file offers a docker image that contains official simulation of robot [`TiaGo`](https://github.com/pal-robotics/tiago_simulation/tree/humble-devel) (Pal robotics) for Ros 2 `Humble`.

Also a builded image can be found in [docker hub](https://hub.docker.com/repository/docker/dsobh/tiagosim/general)

## Prerequisites

In order to launch the docker image some software is needed:

- Gazebo and Rviz installed in host machine.
- [Rocker](https://github.com/osrf/rocker).
- Nvidia Docker support.

In next section the installation instructions of rocker and nvidia docker support are provided.

## Instructions

- Install Nvidia Docker Support:

```
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)    && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -    && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get update
sudo apt-get install -y nvidia-docker2
sudo systemctl restart docker
```

- Install Rocker:

```
sudo apt-get install python3-rocker
```

- Run Docker with rocker

Docker image is launched using rocker. This allows to run the simulation inside the docker, but access it locally  (with `gazebo` and `rviz`).

```
sudo rocker --home --user --nvidia --x11 --privileged <repository_name>:<tag_name>
```

## Launch Simulation

### Simulation + Navigation 2

```
ros2 launch tiago_gazebo tiago_gazebo.launch.py navigation:=true [arm:=no-arm]
```

### Simulation + MoveIt 2

```
ros2 launch tiago_gazebo tiago_gazebo.launch.py moveit:=true
```


