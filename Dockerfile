FROM ros:noetic-ros-core
LABEL maintaner="Joaquin Gimenez <jg@joaquingimenez.com>"

LABEL org.opencontainers.image.title: "noetic-rosbridge"
LABEL org.opencontainers.image.description: "Docker image with ros:noetic-ros-core and ros-bridge-suite running rosbridge server on launch"
LABEL org.opencontainers.image.url: "https://hub.docker.com/repository/docker/joaquingimenez1/noetic-rosbridge"
LABEL org.opencontainers.image.source: "https://github.com/JoaquinGimenez1/docker-noetic-rosbridge"
LABEL org.opencontainers.image.version: "1.1.3"

WORKDIR /

RUN apt update && apt install -y ros-noetic-rosbridge-suite

COPY init-rosbridge.sh .

RUN chmod +x init-rosbridge.sh

CMD ["/init-rosbridge.sh"]
