#! /bin/bash -v

for i in R system
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done

# edit .bashrc
vi ~/.bashrc
echo 'export PATH=~/R-compiled/bin:${PATH}' >> ~/.bashrc
echo 'export R_COMPILE_PKGS=1' >> ~/.bashrc
