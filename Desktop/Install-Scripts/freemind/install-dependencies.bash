#! /bin/bash -v

sudo zypper addrepo -cf \
  http://download.opensuse.org/repositories/home:/illuusio/openSUSE_11.4/home:illuusio.repo
sudo zypper refresh
sudo zypper update

sudo zypper install -y freemind freemind-plugins-help freemind-plugins-script \
  freemind-plugins-svg 
