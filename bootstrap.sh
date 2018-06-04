#!/bin/sh

# Initialize pacman databases
pacman -Syu --noconfirm

# Install packages
pacman -S --noconfirm fish base-devel man-db git neovim python python-pip openldap sssd
pip install bpython virtualfish neovim numpy scipy jupyter requests
