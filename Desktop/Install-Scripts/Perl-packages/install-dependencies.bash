#! /bin/bash -v

sudo zypper addrepo -cf \
  http://download.opensuse.org/repositories/devel:/languages:/perl/openSUSE_11.4/devel:languages:perl.repo
sudo zypper refresh
sudo zypper update

sudo zypper install -y perl-local-lib
sudo zypper install -y perl-YAML
sudo zypper install -y perl-YAML-Syck
