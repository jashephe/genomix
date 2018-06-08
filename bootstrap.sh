#!/bin/sh

# System Configuration
ln -sf /usr/share/zoneinfo/America/Chicago /etc/localtime

# Initialize pacman databases
pacman -Syu --noconfirm

# Install packages
pacman -S --noconfirm fish base-devel clang zlib bzip2 xz man-db gawk grep gzip less sed tar which coreutils procps-ng htop file git tmux xclip neovim python python-pip openldap sssd
pip install bpython virtualfish neovim numpy scipy jupyter requests
