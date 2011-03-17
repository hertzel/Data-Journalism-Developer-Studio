#! /bin/bash -v

sudo zypper install -y tcl-devel tk-devel
for i in wordnet
do
  sudo ./install-${i}.bash 2>&1 | tee install-${i}.log
done
