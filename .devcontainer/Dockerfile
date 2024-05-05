FROM osrf/ros:humble-desktop-full

# create a new user 'developer' and add to 'sudo'
RUN useradd -ms /bin/bash developer && \
    usermod -aG sudo developer
# disable password for 'sudo' group
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# install dependencies
RUN apt-get update && apt-get upgrade -y && \
    apt-get install python3-pip -y

# downgrade setuptools to 58.2.0 to get rid of warning
RUN pip3 install setuptools==58.2.0

# install pre-commit
RUN pip3 install pre-commit

# create workspace
RUN mkdir -p /workspace/colcon_ws/

# source ros2
USER developer
RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc