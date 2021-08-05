#!/bin/bash

DOCKER_BUILDKIT=1 docker build \
       --network=host \
       -t iory/jsk-recognition:melodic \
       .
