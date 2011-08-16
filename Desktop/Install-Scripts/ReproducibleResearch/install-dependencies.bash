#! /bin/bash -v

# get most recent LaTex tools
sudo zypper addrepo -cf \
  http://download.opensuse.org/repositories/Publishing/openSUSE_11.4/Publishing.repo
sudo zypper update

# sigh - need the *whole* texlive-latex for pgfSweave :-(
sudo zypper install -y texlive texlive-latex texlive-xetex

