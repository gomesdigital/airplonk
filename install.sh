#! /bin/bash
#
# A script for installing AirPlonk on macOS.
#
# How to use it:
#
#   Step 1 - grant the script executable permission.
#     run 'chmod +x install.sh'
#
#   Step 2 - the installation directories will require root priveledges to acces them.
#     run 'sudo ./install.sh'
# 
#   Step 3 
#     enter your user password.
#
#   Done.

cp airplonk /usr/local/bin
cp /doc/airplonk.1 /usr/local/share/man/man1 
