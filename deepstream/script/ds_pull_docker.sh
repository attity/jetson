#!/bin/bash

VER=$(cat /etc/nv_tegra_release | cut -d , -f 1-2)
echo "L4T version: $VER"

#################################################
# NGC DeepStream-l4t
# <https://catalog.ngc.nvidia.com/orgs/nvidia/containers/deepstream-l4t>
#
#################################################

docker pull nvcr.io/nvidia/deepstream-l4t:6.1.1-samples
docker pull nvcr.io/nvidia/deepstream-l4t:6.1.1-triton
