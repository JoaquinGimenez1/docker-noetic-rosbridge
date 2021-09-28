FROM osrf/ros:noetic-desktop-full-focal
LABEL maintaner="Joaquin Gimenez <jg@joaquingimenez.com>"

LABEL org.opencontainers.image.title: "noetic-rosbridge"
LABEL org.opencontainers.image.description: "Docker image with ros-noetic-desktop-full and ros-bridge-suite running rosbridge server on launch"
LABEL org.opencontainers.image.url: "https://hub.docker.com/repository/docker/joaquingimenez1/noetic-rosbridge"
LABEL org.opencontainers.image.source: "https://github.com/JoaquinGimenez1/docker-noetic-rosbridge"
LABEL org.opencontainers.image.version: "1.0.4"

WORKDIR /

RUN apt update

RUN apt install ros-noetic-rosbridge-suite -y

COPY init-rosbridge.sh .

RUN chmod +x init-rosbridge.sh

CMD ["/init-rosbridge.sh"]
