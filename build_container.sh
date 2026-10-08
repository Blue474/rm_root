# Use this script to conduct offline testing (testing that doesnt involve a robot)
# Run foxglove bridge desktop to communicate and recieve telemetry with the container.
# the web version doesnt seem to work for some reason. the command line outputs will
# tell you the correct port.

docker run -it --name rv_devel \
--privileged --network host \
-v /dev:/dev -v $HOME/.ros:/root/.ros -v ws:/ros_ws \
ghcr.io/fateryu/rm_vision:latest \
ros2 launch foxglove_bridge foxglove_bridge_launch.xml