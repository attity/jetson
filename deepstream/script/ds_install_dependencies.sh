#!/bin/bash

VER=$(cat /etc/nv_tegra_release | cut -d , -f 1-2)

echo "L4T version: $VER"

#################################################
# Refer to DeepStream Quickstar Guide
# <https://docs.nvidia.com/metropolis/deepstream/dev-guide/text/DS_Quickstart.html>
#################################################
sudo apt install libssl1.1 libgstreamer1.0-0 gstreamer1.0-tools gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav libgstreamer-plugins-base1.0-dev libgstrtspserver-1.0-0 libjansson4 libyaml-cpp-dev

sudo apt update

sudo apt install --reinstall nvidia-l4t-gstreamer
sudo apt install --reinstall nvidia-l4t-multimedia
sudo apt install --reinstall nvidia-l4t-core

# MAKE KAFKA library
DIR_MAKE_KAFKA=$(mktemp -d libkafka.XXXXXX)
pushd $DIR_MAKE_KAFKA

git clone https://github.com/edenhill/librdkafka.git
git reset --hard 7101c2310341ab3f4675fc565f64f0967e135a6a
./configure
make
sudo make install
sudo mkdir -p /opt/nvidia/deepstream/deepstream-6.1/lib
sudo cp /usr/local/lib/librdkafka* /opt/nvidia/deepstream/deepstream-6.1/lib

popd #pushd $DIR_MAKE_KAFKA
rm -rf $DIR_MAKE_KAFKA


