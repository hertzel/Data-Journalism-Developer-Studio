#! /bin/bash -v

sudo zypper install gsl gsl-devel
for i in quantlib armadillo
do
  sudo ./install-${i}.bash 2>&1 | tee install-${i}.log
done
