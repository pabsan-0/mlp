FROM nvcr.io/nvidia/deepstream-l4t:6.2-base

ENV DEBIAN_FRONTED=noninteractive


# ROS Noetic
RUN apt update && \
    apt install -y lsb-release curl && \
    sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' && \
    curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add - && \
    apt update && \
    apt install -y ros-noetic-ros-base 


# Install NVDS 6.2 plus its packed additional dependencies
# nvidia-cuda-dev allows app compilation
RUN apt install -y deepstream-6.2 nvidia-cuda-dev && \
    cd /opt/nvidia/deepstream/deepstream/ && ./user_additional_install.sh  



#COPY assets/nvds.deb /setup/nvds
#RUN sudo apt-get install ./deepstream-6.2_6.2.0-1_arm64.deb
ENTRYPOINT ["bash", "-c"] 
CMD ["bash"]