FROM debian:buster

RUN apt-get update --allow-releaseinfo-change && \
apt-get install curl gnupg ca-certificates zlib1g-dev libjpeg-dev git apt-utils -y

  
RUN echo "deb https://packages.cloud.google.com/apt coral-edgetpu-stable main" | tee /etc/apt/sources.list.d/coral-edgetpu.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

RUN apt-get update --allow-releaseinfo-change && \
    apt-get install python3 python3-pip -y
RUN apt-get install libedgetpu1-legacy-std python3-edgetpu -y
RUN apt-get install python3-opencv -y
RUN apt-get install python3-pycoral python3-tflite-runtime -y
RUN apt-get install libasound-dev portaudio19-dev -y

RUN pip3 install pip --upgrade
RUN pip3 install tflite_runtime
RUN pip3 install pillow
RUN pip3 install argparse
RUN pip3 install numpy>=1.20.0
RUN pip3 install tflite-support==0.4.0
RUN pip3 install protobuf==3.19.0
RUN pip3 install opencv-python
RUN pip3 install pyaudio

RUN apt-get install libedgetpu1-std -y


WORKDIR /home/user
