#! /bin/bash -v

xhost +
sudo ./install-task-view.bash 2>&1 | tee task-view.log
