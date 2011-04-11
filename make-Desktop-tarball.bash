#! /bin/bash -v
rm -f Desktop.tar.bz2
rm -f google-refine*.tar.gz
wget http://google-refine.googlecode.com/files/google-refine-2.0-r1836.tar.gz
pushd Desktop
rm -fr google-refine-2.0
tar xf ../google-refine-2.0-r1836.tar.gz
rm -fr Compendium
tar xf ../compendium-2.0-beta1.tar.gz
popd
pushd Desktop/Install-Scripts/
./cleanup.bash
popd
tar cvf - Desktop | bzip2 -9c > Desktop.tar.bz2
