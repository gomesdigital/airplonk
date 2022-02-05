#! /bin/bash
# 
# A script for installing AirPlonk and its dependencies on your machine.
#
# How to use it:
#
#   Step 1 - Grant the script executable permission.
#     run 'chmod +x install_airplonk.sh'
#
#   Step 2 - Execute the script.
#     run './install_airplonk.sh'
#
#   Step 3 - Enter your password.
#
#   Step 4 - Agree to install any missing dependencies.
#
#   Done.

PACKAGES='expect hostname net-tools nmap rsync xdg-utils'

if [ -x "$(command -v pkg)" ]; then 
    pkg install expect nmap ncurses-utils rsync
    cp airplonk /data/data/com.termux/files/usr/bin
    cp doc/airplonk.1 /data/data/com.termux/files/usr/share/man/man1
elif [ -x "$(command -v apt-get)" ]; then 
    sudo apt install $PACKAGES
    cp airplonk /usr/bin
    cp doc/airplonk.1 /usr/share/man/man1
elif [ -x "$(command -v dnf)" ]; then 
    sudo dnf install $PACKAGES
    cp airplonk /usr/bin
    cp doc/airplonk.1 /usr/share/man/man1
elif [ -x "$(command -v zypper)" ]; then 
    sudo zypper install $PACKAGES
    cp airplonk /usr/bin
    cp doc/airplonk.1 /usr/share/man/man1
elif [ -x "$(command -v yum)" ]; then
    sudo yum install $PACKAGES
    cp airplonk /usr/bin
    cp doc/airplonk.1 /usr/share/man/man1
elif [ -x "$(command -v pacman)" ]; then
    sudo pacman -Syu $PACKAGES
    cp airplonk /usr/bin
    cp doc/airplonk.1 /usr/share/man/man1
elif [ -x "$(command -v apk)" ]; then
    sudo apk add --no-cache $PACKAGES
    cp airplonk /usr/bin
    cp doc/airplonk.1 /usr/share/man/man1
else 
    echo "FAILED TO INSTALL PACKAGES: Package manager not found. You must manually install: $PACKAGES">&2; 
fi
