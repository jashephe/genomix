#!/bin/sh

# Initialize pacman databases
pacman -Syu --noconfirm

# Install packages
pacman -S --noconfirm fish base-devel man-db gawk grep gzip less sed tar which coreutils file git neovim python python-pip openldap sssd
pip install bpython virtualfish neovim numpy scipy jupyter requests
