#! /bin/bash -v

# tools to build from source
sudo zypper refresh
sudo zypper update
sudo zypper install make gcc kernel-source kernel-syms

# get rid of any existing ones
sudo zypper remove virtualbox-guest-kmp-default virtualbox-guest-kmp-desktop \
  virtualbox-guest-kmp-pae virtualbox-guest-tools virtualbox-guest-x11
