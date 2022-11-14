xhost +
sudo docker run -it --rm --net=host --runtime nvidia -e DISPLAY=:1 -w /opt/nvidia/deepstream/deepstream-6.1 -v /tmp/.X11-unix/:/tmp/.X11-unix nvcr.io/nvidia/deepstream-l4t:6.1.1-samples
