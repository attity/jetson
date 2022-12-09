#!/bin/bash

#-----------------------------------
# SDK Manager CLI argumentents: 
# - https://docs.nvidia.com/sdk-manager/sdkm-command-line-install/index.html
#-----------------------------------

function help () {
    docker run -it --rm sdkmanager --help
}

function flash_all () {
docker run -it --rm --privileged \
    -v /dev/bus/usb:/dev/bus/usb/ \
    -v /dev:/dev \
    -v /media/$USER:/media/nvidia:slave \
    -v /home/ataka/nvidia/sdkmanger/docker/jetpack:/tmp/jetpack \
    --name JetPack_ORIN_Devkit \
    --network host \
    sdkmanager \
    --cli install \
    --logintype devzone \
    --downloadfolder /tmp/jetpack/downloads \
    --targetimagefolder /tmp/jetpack/l4t \
    --exportlogs /tmp/jetpack/l4t \
    --product Jetson \
    --version 5.0.2 \
    --targetos Linux \
    --target JETSON_AGX_ORIN_TARGETS \
    --flash all \
    --select 'Jetson Linux' \
    --select 'Jetson SDK Components' \
    --license accept 
}

function query () {
    docker run -it --rm sdkmanager --query noninteractive --logintype devzone
}

function flash_os () {
    echo aaa
}

flash_all
