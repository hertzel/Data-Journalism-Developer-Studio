#!/bin/bash

#
# install-dependencies.bash
#
# Copyright (C) 2009-11 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#
#

# wget and git may not be there in appliances
sudo zypper --non-interactive in wget git gitk git-gui

# vim
sudo zypper --non-interactive in vim

# command line conveniences
sudo zypper --non-interactive in command-not-found findutils-locate

# needed for audio R packages
sudo zypper --non-interactive in fftw3 fftw3-devel fftw3-threads \
  fftw3-threads-devel freeglut-devel libpng14-devel

# needed for LaTeX / SWeave
sudo zypper --non-interactive in texlive-bin-latex texlive-bin libxml2-devel

# R, Chromium and nokogiri
sudo zypper addrepo -cf \
http://download.opensuse.org/repositories/openSUSE:/11.4:/Contrib/standard/openSUSE:11.4:Contrib.repo
sudo zypper addrepo -cf http://download.opensuse.org/repositories/devel:/languages:/R:/patched/openSUSE_11.4/devel:languages:R:patched.repo
sudo zypper addrepo -cf http://download.opensuse.org/repositories/devel:/languages:/ruby:/extensions/openSUSE_11.4/devel:languages:ruby:extensions.repo
sudo zypper refresh
sudo zypper update

sudo zypper --non-interactive in chromium vpx-tools
sudo zypper --non-interactive in R-patched R-patched-devel
sudo zypper --non-interactive in rubygem-nokogiri rubygem-mechanize \
  rubygem-sqlite3 rubygem-json
sudo zypper --non-interactive in tesseract
