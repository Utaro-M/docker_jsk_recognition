#!/bin/bash

DOCKER_BUILDKIT=1 docker build \
       --network=host \
       -t utarom/jsk_recognition:latest \
       .
