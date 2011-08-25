#! /bin/bash -v

# sigh - need the *whole* texlive-latex for pgfSweave :-(
sudo zypper install -y texlive texlive-latex texlive-xetex

# For Sweave / LyX
sudo zypper install -y lyx latex2html latex2html-doc latex2html-pngicons \
  texlive-tex4ht
