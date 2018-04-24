FROM ros:indigo-ros-base
# install ros tutorials packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-indigo-ros-tutorials \
    ros-indigo-common-tutorials \
    vim \
    ros-indigo-roswww \
    && rm -rf /var/lib/apt/lists/
