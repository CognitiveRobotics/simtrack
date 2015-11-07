
#!/bin/bash
# set -e

source /opt/ros/indigo/setup.bash
mkdir /root/ws/src -p
cd /root/ws/src
wget -O .rosinstall https://raw.githubusercontent.com/CognitiveRobotics/simtrack/master/simtrack.rosinstall
wstool update

# install dependencies
cd ..
rm /etc/ros/rosdep/sources.list.d/20-default.list
rosdep init
rosdep update
rosdep install --from-paths src --ignore-src -y

# build code
source /opt/ros/indigo/setup.bash
catkin_make -DCMAKE_BUILD_TYPE="Release"
