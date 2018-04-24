FROM ros:indigo-ros-base
# install ros tutorials packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-indigo-ros-tutorials \
    ros-indigo-common-tutorials \
    vim \
    ros-indigo-roswww \
    && rm -rf /var/lib/apt/lists/

RUN mkdir -p ~/catkin_ws/src
RUN cd ~/catkin_ws/src
RUN git clone https://github.com/gogameboy1/roswww.git
RUN cd ~/catkin_ws
RUN catkin_make

RUN source devel/setup.bash

