#! /bin/bash -v
./cleanup.bash
wget http://google-refine.googlecode.com/files/google-refine-2.1-r2136.tar.gz
pushd Desktop
tar xf ../google-refine-2.0-r1836.tar.gz
popd
tar cvf - Desktop | bzip2 -9c > Desktop.tar.bz2
