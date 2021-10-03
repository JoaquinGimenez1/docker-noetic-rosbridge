FROM ros:noetic-ros-core-focal
LABEL maintaner="Joaquin Gimenez <jg@joaquingimenez.com>"

LABEL version="1.1.0"
LABEL build-date="2021-10-03"

WORKDIR /

RUN apt update

RUN apt install ros-noetic-rosbridge-suite -y

COPY init-rosbridge.sh .

RUN chmod +x init-rosbridge.sh

CMD ["/init-rosbridge.sh"]
