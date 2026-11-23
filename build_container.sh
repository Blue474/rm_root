# Use this script to conduct offline testing (testing that doesnt involve a robot)
# Run foxglove bridge desktop to communicate and recieve telemetry with the container.
# the web version doesnt seem to work for some reason. the command line outputs will
# tell you the correct port.

# CRUCIAL NOTE: ghcr.io/blue474/rm_vision:latest needs to have the username replaced with
# your username and repo name to actually pull from your image. The image is only generated
# if you enable jobs on your repo and when you push to main.

# IMPORTANT: change line 16 (The line that creates the mounted volume for the TestData directory) 
# to reflect the path on your system to your test data.

docker run -it --name rv_devel \
--privileged --network host \
-v /dev:/dev -v $HOME/.ros:/root/.ros -v ws:/ros_ws \
-v ~/TestData:/ros_ws/TestData:ro \
ghcr.io/blue474/rm_vision:latest \
ros2 launch foxglove_bridge foxglove_bridge_launch.xml


docker run -it --name rv_runtime \
--privileged --network host --restart always \
-v /dev:/dev -v $HOME/.ros:/root/.ros -v ws:/ros_ws \
-v ~/TestData:/ros_ws/TestData:ro \
ghcr.io/blue474/rm_vision:latest \
ros2 launch rm_vision_bringup no_hardware.launch.py