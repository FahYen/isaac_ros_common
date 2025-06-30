#!/bin/bash
${ISAAC_ROS_WS}/src/isaac_ros_common/scripts/docker_deploy.sh \
    --base_image_key "aarch64.ros2_humble.realsense" \
    --launch_package "isaac_ros_visual_slam" \
    --launch_file "isaac_ros_visual_slam_realsense.launch.py" \
    --include_dir "/home/fah/ros2_ws/src/ag_tech_ros:/workspaces/isaac_ros-dev/src/ag_tech_ros" \
    --ros_ws "/home/fah/ros2_ws" \
    --name "fahyen/ag_tech:latest"