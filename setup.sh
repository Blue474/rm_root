# run the to set up the workspace automatically.
mkdir -p ros_ws/src
cd ros_ws/src

pip install openvino

git clone https://github.com/Blue474/rm_auto_aim
git clone https://github.com/Blue474/rm_buff
git clone https://github.com/Blue474/ros2_hik_camera
git clone https://github.com/Blue474/rm_gimbal_description
git clone https://github.com/Blue474/rm_serial_driver
git clone https://github.com/Blue474/rm_vision
git clone https://github.com/Blue474/rm_auto_record

#apt-get update
#rosdep install --from-paths src --ignore-src -r -y
#apt-get install ros-humble-foxglove-bridge wget htop vim nano -y
#rm -rf /var/lib/apt/lists/*

#cd ..

#. /opt/ros/humble/setup.sh && colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release

#export PATH="$PATH:/path/to/your/folder"

# run the following commands a single time. Do not rerun with updates or rebuilds.
# If there is an error with this, check the ~/.bashrc file, delete the data these add,
# and fix whatever issues you had encountered.
#echo 'source install/setup.sh' >> ~/.bashrc
#echo 'eval "$(register-python-argcomplete3 ros2)"' >> ~/.bashrc
#echo 'eval "$(register-python-argcomplete3 colcon)"' >> ~/.bashrc