#! /bin/bash -v

sudo zypper addrepo -cf \
  http://download.opensuse.org/repositories/Publishing/openSUSE_11.4/Publishing.repo
sudo zypper refresh
sudo zypper update

sudo zypper remove -y lyx
sudo zypper install lyx
