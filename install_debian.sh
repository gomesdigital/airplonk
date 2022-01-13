#! /bin/bash
# 
# A script for installing AirPlonk on Debian.
#
# How to use it:
#
#   Step 1 - Grant the script executable permission.
#     run 'chmod +x install_debian.sh'
#
#   Step 2 - Execute the script.
#     run './install_debian.sh'
#
#   Step 3 - Enter your password.
#
#   Step 4 - Agree to install any missing dependencies.
#
#   Done.

sudo apt install expect hostname net-tools nmap rsync xdg-utils -y

cp airplonk /usr/bin
cp doc/airplonk.1 /usr/share/man/man1

