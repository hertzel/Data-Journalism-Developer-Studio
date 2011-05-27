#! /bin/bash -v

sudo zypper addrepo -cf \
  http://download.opensuse.org/repositories/Publishing/openSUSE_11.4/Publishing.repo
sudo zypper refresh
sudo zypper update

sudo zypper install -y lyx latex2html latex2html-doc latex2html-pngicons \
  texlive-tex4ht
