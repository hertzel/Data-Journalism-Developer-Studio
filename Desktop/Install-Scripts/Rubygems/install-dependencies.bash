#! /bin/bash -v

sudo zypper addrepo -cf http://download.opensuse.org/repositories/devel:/languages:/ruby:/extensions/openSUSE_11.4/devel:languages:ruby:extensions.repo
sudo zypper refresh
sudo zypper update

sudo zypper install -y rubygem-nokogiri rubygem-mechanize rubygem-sqlite3 \
  rubygem-json
