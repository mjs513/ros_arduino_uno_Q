#!/usr/bin/bash

docker build -t ros_jazzy_ws .

docker run -it --net=host --name ros_jazzy_container -v $(pwd)/src:/workspace/src -v /var/run/arduino-router.sock:/var/run/arduino-router.sock ros_jazzy_ws
