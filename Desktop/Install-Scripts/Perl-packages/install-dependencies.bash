#! /bin/bash -v

sudo zypper addrepo -cf \
  http://download.opensuse.org/repositories/devel:/languages:/perl/openSUSE_11.4/devel:languages:perl.repo
sudo zypper refresh
sudo zypper update
sudo zypper dup --from=devel_languages_perl

sudo zypper install -y perl-AnyEvent-Twitter-Stream
sudo zypper install -y perl-Browser-Open
sudo zypper install -y perl-Data-Dumper
sudo zypper install -y perl-DBD-SQLite
sudo zypper install -y perl-Email-Send
sudo zypper install -y perl-Email-Simple
sudo zypper install -y perl-HTTP-Date
sudo zypper install -y perl-Net-Twitter
sudo zypper install -y perl-POE
sudo zypper install -y perl-Software-License
sudo zypper install -y perl-WWW-Mechanize
sudo zypper install -y perl-YAML
sudo zypper install -y perl-YAML-Syck
sudo zypper install -y perl-YAML-Tiny
