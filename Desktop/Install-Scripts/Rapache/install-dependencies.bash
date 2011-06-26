#! /bin/bash -v

sudo zypper addrepo -cf \
http://download.opensuse.org/repositories/network:/utilities/openSUSE_11.4/network:utilities.repo
sudo zypper update

sudo zypper install -y apache2 apache2-devel apache2-doc apache2-prefork \
  apache2-utils yast2-http-server awstats
