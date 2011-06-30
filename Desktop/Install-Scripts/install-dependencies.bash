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

# repository where Tesseract lives
sudo zypper addrepo -cf \
  http://download.opensuse.org/repositories/openSUSE:/11.4:/Contrib/standard/openSUSE:11.4:Contrib.repo

# wget and git may not be there in appliances
sudo zypper install -y wget git-core

# vim
sudo zypper install -y vim

# command line conveniences
sudo zypper install -y command-not-found findutils-locate

# needed for R tcl/tk builds
sudo zypper install -y tcl-devel tk-devel

# needed for LaTeX / SWeave
sudo zypper install -y texlive-bin-latex texlive-bin libxml2-devel texinfo

# Google Tesseract optical character recognition engine
sudo zypper install -y tesseract

# Just in case there's no browser
sudo zypper install -y MozillaFirefox MozillaFirefox-branding-openSUSE \
  icedtea-web
