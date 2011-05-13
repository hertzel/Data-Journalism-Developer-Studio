#! /bin/bash -v

sudo zypper addrepo -cf \
  http://download.opensuse.org/repositories/multimedia:/apps/openSUSE_11.4/multimedia:apps.repo
sudo zypper refresh
sudo zypper update

sudo zypper install -y rosegarden lilypond qjackctl csound cecilia hydrogen \
  ZynAddSubFX fluidsynth-dssi xsynth-dssi fluidsynth
