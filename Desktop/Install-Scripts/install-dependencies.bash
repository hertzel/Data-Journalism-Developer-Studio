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
sudo zypper --non-interactive in wget git-core

# vim
sudo zypper --non-interactive in vim

# command line conveniences
sudo zypper --non-interactive in command-not-found findutils-locate

# needed for LaTeX / SWeave
sudo zypper --non-interactive in texlive-bin-latex texlive-bin libxml2-devel

# Chromium
sudo zypper addrepo -cf \
http://download.opensuse.org/repositories/openSUSE:/11.4:/Contrib/standard/openSUSE:11.4:Contrib.repo
sudo zypper refresh
sudo zypper update

sudo zypper --non-interactive in chromium vpx-tools
sudo zypper --non-interactive in tesseract
sudo zypper --non-interactive in freeglut-devel libpng14-devel
