#! /bin/bash -v

sudo su - # get the visudo and /etc/group stuff done!

# pull down external stuff
./git-submodule-update.bash

# install Linux dependencies
vim rstudio/dependencies/common/install-gwt # hack the https
if [ "$1" != "--appliance" ]
then
  pushd rstudio/dependencies/linux
  ./install-dependencies-zypper
  popd
  ./install-dependencies.bash 2>&1 | tee install-dependencies.log # my additions
else
  pushd rstudio/dependencies/common
  ./install-gwt
  popd
fi

# install R basics
sudo ./install-system.bash

# build server
sudo rm -fr build; mkdir -p build
pushd build
cmake -DRSTUDIO_TARGET=Server -DCMAKE_BUILD_TYPE=Release \
  ~/Desktop/Install-Scripts/rstudio
sudo make install 2>&1 | tee ../make-install-server.log
popd
./server-setup.bash

# build desktop
sudo rm -fr build; mkdir -p build
pushd build
cmake -DRSTUDIO_TARGET=Desktop -DCMAKE_BUILD_TYPE=Release \
  ~/Desktop/Install-Scripts/rstudio
sudo make install 2>&1 | tee ../make-install-desktop.log
popd
sudo ln -sf /usr/local/lib/rstudio/bin/rstudio /usr/local/bin/rstudio

# Perl modules
pushd Perl-packages
./cleanup.bash
./install-dependencies.bash
./install-all.bash
popd

./make-archives.bash
