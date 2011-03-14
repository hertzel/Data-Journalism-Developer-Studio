#! /bin/bash -v

# sometimes we need to rebuild VMware Tools / VirtualBox Guest Tools
sudo zypper refresh
sudo zypper update
sudo zypper install make gcc kernel-source kernel-syms

# now get rid of any existing ones
sudo zypper remove virtualbox-guest-kmp-default virtualbox-guest-kmp-desktop \
  virtualbox-guest-kmp-pae virtualbox-guest-tools virtualbox-guest-x11
sudo zypper remove libvmtools0 open-vm-tools open-vm-tools-gui \
  vmware-guest-kmp-default vmware-guest-kmp-desktop vmware-guest-kmp-pae
