#!/bin/bash
#publish memory branch version
DOCKER_BUILDKIT=1 docker build \
       --network=host \
       -t utarom/jsk_recognition:buildall_publish_memory \
       .
