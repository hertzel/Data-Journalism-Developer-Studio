#! /bin/bash -v

# sigh - need the *whole* texlive-latex for pgfSweave :-(
sudo zypper install -y texlive texlive-latex texlive-xetex

# For Sweave / LyX
sudo zypper install -y lyx latex2html latex2html-doc latex2html-pngicons \
  texlive-tex4ht

# document creation
sudo zypper install -y scribus
sudo zypper install -y inkscape
sudo zypper install -y inkscape-extensions-dia
sudo zypper install -y inkscape-extensions-extra
sudo zypper install -y inkscape-extensions-fig
sudo zypper install -y inkscape-extensions-gimp
sudo zypper install -y inkscape-extensions-skencil
sudo zypper install -y gimp
sudo zypper install -y gimp-branding-openSUSE
sudo zypper install -y gimp-gap
sudo zypper install -y gimp-help
sudo zypper install -y gimp-module-hal
sudo zypper install -y gimp-plugin-lqr
sudo zypper install -y gimp-plugins-python
sudo zypper install -y gimp-save-for-web
sudo zypper install -y gimp-ufraw ufraw
sudo zypper install -y gutenprint-gimpplugin
sudo zypper install -y calibre
