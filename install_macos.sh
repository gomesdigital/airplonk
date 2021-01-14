#! /bin/bash
#
# A script for installing AirPlonk on macOS.
#
# How to use it:
#
#   Step 1 - Grant the script executable permission.
#     run 'chmod +x install.sh'
#
#   Step 2 - The installation directories will require root priveledges to acces them.
#     run 'sudo ./install.sh'
#
#   Done.
#
# Note - macOS has no default package manager, for this reason you will have to seek out how 
# to install any missing dependencies on your own. I reccomend using Homebrew. If there are
# any missing dependencies, AirPlonk will however list these, so you know what to look for.

cp airplonk /usr/local/bin
cp doc/airplonk.1 /usr/local/share/man/man1 
