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
       # -it iory/jsk-recognition:melodic /bin/bash
       -it utarom/jsk_recognition:melodic /bin/bash
xhost +local:docker
