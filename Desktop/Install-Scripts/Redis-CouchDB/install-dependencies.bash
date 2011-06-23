#! /bin/bash -v

sudo zypper addrepo -cf \
http://download.opensuse.org/repositories/server:/database/openSUSE_11.4/server:database.repo
sudo zypper addrepo -cf \
http://download.opensuse.org/repositories/Virtualization:/Cloud:/OpenStack/openSUSE_11.4/Virtualization:Cloud:OpenStack.repo
sudo zypper refresh
sudo zypper update

sudo zypper install -f redis redis-doc couchdb