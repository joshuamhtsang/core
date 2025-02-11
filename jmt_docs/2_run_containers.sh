#!/bin/sh

# Commands to get CORE running with Docker containers
# [https://coreemu.github.io/core/install_docker.html]

# start container into the background and run the core-daemon by default
sudo docker run -itd --name core -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:rw --privileged --entrypoint core-daemon core
# enable xhost access to the root user, this will allow you to run the core-gui from the container
xhost +local:root
# sleep a bit
echo "Waiting 5 seconds for core container to fully start..."
sleep 5
# launch core-gui from the running container launched previously
sudo docker exec -itd core core-gui
docker ps