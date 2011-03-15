#! /bin/bash -v
rm -f Desktop.tar.bz2
rm -f google-refine*.tar.gz
wget http://google-refine.googlecode.com/files/google-refine-2.0-r1836.tar.gz
pushd Desktop
rm -fr google-refine-2.0
tar xf ../google-refine-2.0-r1836.tar.gz
popd
pushd Desktop/Install-Scripts/Perl-packages
./cleanup.bash
popd
sudo rm -fr Desktop/Install-Scripts/build
sudo rm -fr Desktop/Install-Scripts/rstudio
sudo rm -fr Desktop/Install-Scripts/*.log
tar cvf - Desktop | bzip2 -9c > Desktop.tar.bz2
