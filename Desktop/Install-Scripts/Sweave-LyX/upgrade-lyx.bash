#! /bin/bash -v

sudo zypper addrepo -cf \
  http://download.opensuse.org/repositories/KDE:/Unstable:/Playground/openSUSE_11.4/KDE:Unstable:Playground.repo
sudo zypper refresh
sudo zypper update

sudo zypper remove -y lyx
sudo zypper install lyx
