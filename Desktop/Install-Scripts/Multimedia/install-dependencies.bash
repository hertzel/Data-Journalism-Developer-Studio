#! /bin/bash -v

# needed for R audio  packages
sudo zypper install -y fftw3 fftw3-devel fftw3-threads fftw3-threads-devel

# base pattern
sudo zypper install -y -t pattern multimedia
sudo zypper install -y yast2-sound
sudo zypper install -y dvd+rw-tools
sudo zypper install -y vorbis-tools
sudo zypper install -y ripit
sudo zypper install -y abcde
sudo zypper install -y gstreamer-0_10-plugins-good-extra
sudo zypper install -y audacity
sudo zypper install -y timidity
sudo zypper install -y vdr
sudo zypper install -y xawtv
sudo zypper install -y flac

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

# Algorithmic composition and synthesis
sudo zypper install -y rosegarden lilypond qjackctl csound cecilia hydrogen \
  ZynAddSubFX fluidsynth-dssi xsynth-dssi fluidsynth jamin noteedit
