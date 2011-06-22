#! /bin/bash -v

sudo zypper addrepo -cf \
http://download.opensuse.org/repositories/Virtualization:/Cloud:/OpenStack/openSUSE_11.4/Virtualization:Cloud:OpenStack.repo
sudo zypper refresh
sudo zypper update

sudo zypper install -y redis redis-doc
