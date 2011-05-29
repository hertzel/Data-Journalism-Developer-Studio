#! /bin/bash -v

# Chromium lives here
sudo zypper addrepo -cf \
http://download.opensuse.org/repositories/openSUSE:/11.4:/Contrib/standard/openSUSE:11.4:Contrib.repo
sudo zypper refresh
sudo zypper update

sudo zypper install -y chromium vpx-tools chromium-devel v8-devel libvpx-devel
sudo zypper install -y MozillaFirefox-devel
