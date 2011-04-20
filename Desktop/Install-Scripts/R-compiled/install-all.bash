#! /bin/bash -v

# let X work
export DISPLAY=:0.0
xhost +

sudo ./install-R.bash 2>&1 | tee R.log
export R_COMPILE_PKGS=1
export PATH=/usr/local/R-compiled/bin:${PATH}
sudo ./install-system.bash 2>&1 | tee system.log
