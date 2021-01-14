#! /data/data/com.termux/files/usr/bin/bash
# 
# A script for installing AirPlonk on Termux.
#
# How to use it:
#
#   Step 1 - Grant the script executable permission.
#     run 'chmod +x install.sh'
#
#   Step 2 - Execute the script.
#     run './install_termux.sh'
#
#   Step 3 - Enter your password.
#
#   Step 4 - Agree to install any missing dependencies.
#
#   Done.

pkg install nmap
pkg install rsync
pkg install ncurses-utils
pkg install expect

cp airplonk /data/data/com.termux/files/usr/bin
cp doc/airplonk.1 /data/data/com.termux/files/usr/share/man/man1

