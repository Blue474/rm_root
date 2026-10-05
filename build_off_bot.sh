# used to build the project assuming the setup script was run and all dependencies 
# are downloaded. Should be run when the project is being tested on your pc,
# not for actual deployment.


# This script should only be run if the current directory is the root file.
colcon build --symlink-install

source /opt/ros/humble/setup.bash
