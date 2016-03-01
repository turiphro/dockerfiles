#!/usr/bin/bash
# Build OpenCV from source
# Based on https://github.com/siomiz/node-opencv/blob/master/build.sh

git clone htts://github.com/itseez/opencv.git /usr/local/src/opencv

cd /usr/local/src/opencv

git checkout ${OPENCV_VERSION}

mkdir release && cd release

cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D PYTHON_EXECUTABLE=/usr/bin/python3 -D WITH_IPP=ON ..

make && make install

cd /
rm -rf /usr/local/src/opencv
