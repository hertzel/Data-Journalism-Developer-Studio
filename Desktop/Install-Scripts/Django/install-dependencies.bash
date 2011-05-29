#! /bin/bash -v

# Repository
sudo zypper addrepo -cf \
  http://download.opensuse.org/repositories/devel:/languages:/python/openSUSE_11.4/devel:languages:python.repo
sudo zypper refresh
sudo zypper update

sudo zypper install -y python-django
