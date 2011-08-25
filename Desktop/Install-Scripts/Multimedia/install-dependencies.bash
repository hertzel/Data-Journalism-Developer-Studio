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
sudo zypper install -y flac

# video and animation
sudo zypper install -y blender blender-doc
sudo zypper install -y pitivi
sudo zypper install -y gtk-recordMyDesktop

# Algorithmic composition and synthesis
sudo zypper install -y rosegarden lilypond qjackctl csound cecilia hydrogen \
  ZynAddSubFX fluidsynth-dssi xsynth-dssi fluidsynth jamin noteedit \
  perl-XML-Twig sox resample
