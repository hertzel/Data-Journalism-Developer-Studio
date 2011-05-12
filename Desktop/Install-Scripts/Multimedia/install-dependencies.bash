#! /bin/bash -v

# needed for R audio  packages
sudo zypper install -y fftw3 fftw3-devel fftw3-threads fftw3-threads-devel

# base pattern
sudo zypper install -y -t pattern multimedia

# audio
sudo zypper install -y audacity

# video and animation
sudo zypper install -y blender blender-doc
sudo zypper install -y pitivi
sudo zypper install -y gtk-recordMyDesktop

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
