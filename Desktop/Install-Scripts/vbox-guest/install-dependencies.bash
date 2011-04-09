#! /bin/bash -v

# tools to build from source
sudo zypper refresh
sudo zypper update
sudo zypper install make gcc kernel-source kernel-syms

# get rid of any existing ones
sudo zypper remove libvmtools0 open-vm-tools open-vm-tools-gui \
  vmware-guest-kmp-default vmware-guest-kmp-desktop vmware-guest-kmp-pae
