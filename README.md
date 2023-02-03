# TiagoSim

## Instructions

- Run Docker with no-vnc

```
docker run -p 6080:80 -p 5900:5900 <<repo_name>>:<<tag_name>>
```

Browse: http://127.0.0.1:6080

## Launch Simulation

### Simulation + Navigation 2

```
ros2 launch tiago_gazebo tiago_gazebo.launch.py navigation:=true [arm:=no-arm]
```

### Simulation + MoveIt 2

```
ros2 launch tiago_gazebo tiago_gazebo.launch.py moveit:=true
```


