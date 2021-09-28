FROM osrf/ros:noetic-desktop-full-focal
LABEL maintaner="Joaquin Gimenez <jg@joaquingimenez.com>"

LABEL version="1.0.1"
LABEL build-date="2021-09-28"

WORKDIR /

RUN apt update

RUN apt install ros-noetic-rosbridge-suite -y

COPY init-rosbridge.sh .

RUN chmod +x init-rosbridge.sh

CMD ["/init-rosbridge.sh"]
