#! /bin/bash -v
git status
pushd Desktop/Install-Scripts
./cleanup.bash
popd
rm -fr Desktop.tar.bz2 Desktop/google-refine-* google-refine-*
git status
