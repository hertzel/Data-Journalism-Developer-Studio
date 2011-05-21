#! /bin/bash -v

sudo zypper addrepo -cf \
  http://download.opensuse.org/repositories/devel:/languages:/perl/openSUSE_11.4/devel:languages:perl.repo
exit
sudo zypper refresh
sudo zypper update

sudo zypper install -y perl-AnyEvent-Twitter-Stream
sudo zypper install -y perl-Browser-Open
sudo zypper install -y perl-Data-Dumper
sudo zypper install -y perl-Email-Send
sudo zypper install -y perl-Email-Simple
sudo zypper install -y perl-HTTP-Date
sudo zypper install -y perl-Net-Twitter
sudo zypper install -y perl-POE
sudo zypper install -y perl-Software-License
sudo zypper install -y perl-YAML-Tiny
