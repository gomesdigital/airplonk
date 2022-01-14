#! /usr/bin/bash
# 
# A script for installing AirPlonk on RHEL (tested on Fedora 35).
#
# How to use it:
#
#   Step 1 - Grant the script executable permission.
#     run 'chmod +x install_fedora.sh'
#
#   Step 2 - Execute the script.
#     run './install_fedora.sh'
#
#   Step 3 - Enter your password.
#
#   Step 4 - Agree to install any missing dependencies.
#
#   Done.

sudo dnf install expect hostname net-tools nmap rsync xdg-utils -y

sudo cp airplonk /usr/bin
sudo cp doc/airplonk.1 /usr/share/man/man1
