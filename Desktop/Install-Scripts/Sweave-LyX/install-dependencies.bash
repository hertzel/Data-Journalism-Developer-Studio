#! /bin/bash -v

# get latest LaTeX and LyX
sudo zypper addrepo -cf \
  http://download.opensuse.org/repositories/Publishing/openSUSE_11.4/Publishing.repo
sudo zypper update

sudo zypper install -y lyx latex2html latex2html-doc latex2html-pngicons \
  texlive-tex4ht
