#! /bin/bash -v
./cleanup.bash
export WHERE=http://google-refine.googlecode.com/files
export WHAT=google-refine-2.1-r2136.tar.gz
wget ${WHERE}/${WHAT}
pushd Desktop
tar xf ../${WHAT}
popd
tar cvf - Desktop | bzip2 -9c > Desktop.tar.bz2
