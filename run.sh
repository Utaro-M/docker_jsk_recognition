#!/bin/bash

xhost +local:root
docker run --rm \
       --gpus all \
       --privileged \
       --volume="/dev:/dev" \
       --name "jsk_recognition" \
       --net=host \
       --env="DISPLAY" \
       --env="QT_X11_NO_MITSHM=1" \
       --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
       --volume="$(pwd)/docker_bind:/mnt" \
       --volume="/home/fukazawa/.emacs.d:/root/.emacs.d/" \
       -it utarom/jsk_recognition:buildall /bin/bash
xhost +local:docker
