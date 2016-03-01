FROM ubuntu:14.04

RUN apt-get update
RUN apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends cmake build-essential python3-pip python3-numpy python3-scipy python3-dev libeigen3-dev libdc1394-22-dev libjpeg-dev libpng-dev libtiff.dev libjasper-dev libssl-dev git
# for GUI, also install apt-get libgtk2.0-dev

ENV OPENCV_VERSION 3.1.0

COPY build.sh /build.sh
RUN bash /build.sh \
    && rm /build.sh

RUN apt-get purge -y cmake build-essential git
RUN apt-get autoremove -y
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/
