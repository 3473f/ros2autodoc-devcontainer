FROM osrf/ros:humble-desktop-full

# create a new user '3473f' and add to 'sudo'
RUN useradd -ms /bin/bash 3473f && \
    usermod -aG sudo 3473f
# disable password for 'sudo' group
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# install dependencies
RUN apt-get update && apt-get upgrade -y && \
    apt-get install python3-pip -y

# downgrade setuptools to 58.2.0 to get rid of warning
RUN pip3 install setuptools==58.2.0