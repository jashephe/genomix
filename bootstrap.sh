#!/bin/sh

# System Configuration
ln -sf /usr/share/zoneinfo/America/Chicago /etc/localtime

# Initialize pacman databases
pacman -Syu --noconfirm

# Install packages
pacman -S --noconfirm fish man-db coreutils gawk grep less sed which procps-ng
pacman -S --noconfirm gzip zlib bzip2 xz tar
pacman -S --noconfirm base-devel git clang python python-pip jre8-openjdk
pacman -S --noconfirm parallel htop tmux neovim xclip
pacman -S --noconfirm openldap sssd

# Install other packages
pip install bpython virtualfish neovim numpy scipy jupyter requests
