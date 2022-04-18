#! /bin/bash
# 
# A script for installing AirPlonk and its dependencies.
#
# How to use it:
#
#    Termux:
#
#       Step 1 - Execute the script. 
#           run './install.sh'
#
#    Linux:
#
#       Step 1 - Execute the script with root permission. 
#           run 'sudo /install.sh'
#
#       Step 2 - Enter your password. (if required)
#
#       Step 3 - Agree to install any missing dependencies.

PACKAGES="expect hostname man net-tools nmap rsync xdg-utils"

if [ -x "$(command -v pkg)" ]; then 
    # Termux
    pkg install expect iproute2 man net-tools nmap rsync 
    cp src/* /data/data/com.termux/files/usr/bin
    cp doc/airplonk.1 /data/data/com.termux/files/usr/share/man/man1
elif [ -x "$(command -v apt-get)" ]; then 
    sudo apt install $PACKAGES
    cp src/* /usr/bin
    cp doc/airplonk.1 /usr/share/man/man1
elif [ -x "$(command -v dnf)" ]; then 
    sudo dnf install $PACKAGES
    cp src/* /usr/bin
    cp doc/airplonk.1 /usr/share/man/man1
elif [ -x "$(command -v zypper)" ]; then 
    sudo zypper install $PACKAGES
    cp src/* /usr/bin
    cp doc/airplonk.1 /usr/share/man/man1
elif [ -x "$(command -v yum)" ]; then
    sudo yum install $PACKAGES
    cp src/* /usr/bin
    cp doc/airplonk.1 /usr/share/man/man1
elif [ -x "$(command -v pacman)" ]; then
    sudo pacman -Syu $PACKAGES
    cp src/* /usr/bin
    cp doc/airplonk.1 /usr/share/man/man1
elif [ -x "$(command -v apk)" ]; then
    sudo apk add --no-cache $PACKAGES
    cp src/* /usr/bin
    cp doc/airplonk.1 /usr/share/man/man1
else 
    echo "FAILED TO INSTALL PACKAGES: Package manager not found. You must manually install: $PACKAGES">&2; 
    echo "If you're on MacOS it is advised to use the Homebrew instructions instead."
fi
