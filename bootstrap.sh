#!/bin/sh

# System Configuration
ln -sf /usr/share/zoneinfo/America/Chicago /etc/localtime

# Initialize pacman databases
pacman -Syu --noconfirm
pacman -Fy --noconfirm

# Install packages
pacman -S --noconfirm fish man-db coreutils gawk grep less sed which procps-ng
pacman -S --noconfirm gzip zlib bzip2 xz zip unzip tar mariadb
pacman -S --noconfirm base-devel git clang python
pacman -S --noconfirm parallel htop tmux neovim xclip
pacman -S --noconfirm openldap sssd

# Install other packages
pip install bpython neovim

cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

yay -S --noconfirm igv samtools
