#!/bin/bash

docker build -t devbox .
docker run -it -v $HOME:/home/developer/homedir devbox
