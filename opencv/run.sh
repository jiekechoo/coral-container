IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost + $IP

docker run --rm -it -e DISPLAY=$IP:0 -v "/Users/jiekechoo/devel/coral-container/opencv:/home/user" coral-python:2 python3 /home/user/opencv-rtsp.py 
