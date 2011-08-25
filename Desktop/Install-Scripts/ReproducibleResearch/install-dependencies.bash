#! /bin/bash -v

# get most recent LaTex tools
sudo zypper addrepo -cf \
  http://download.opensuse.org/repositories/Publishing/openSUSE_11.4/Publishing.repo
sudo zypper update

# sigh - need the *whole* texlive-latex for pgfSweave :-(
sudo zypper install -y texlive texlive-latex texlive-xetex

<<<<<<< HEAD
# For Sweave / LyX
sudo zypper install -y lyx latex2html latex2html-doc latex2html-pngicons \
  texlive-tex4ht
=======
>>>>>>> 5378366de636b57689593a80a87880eddc572177
