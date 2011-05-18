#! /bin/bash -v
git status
pushd Desktop/Install-Scripts
./cleanup.bash
popd
rm -fr Desktop.tar.bz2 Desktop/google-refine-2.0 google-refine-2.0-r1836.tar.gz
git status
