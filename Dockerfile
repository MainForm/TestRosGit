FROM subform/ros_with_cuda10.0:melodic

WORKDIR /root

#GPU setting
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=all

RUN apt update

RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc

CMD ["/bin/bash"]