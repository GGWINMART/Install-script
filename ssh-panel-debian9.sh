#!/bin/bash

# This is auto script to easily install SSH panel on Debian 9

# Test to see if user is running with root privileges
if [[ "${UID}" -ne 0 ]]
then
 echo 'Must execute with sudo or root' >&2
 exit 1
fi

# Remove older installation SSH panel
sudo rm -f DebianVPS*

# Retrieves installer from web servers
sudo wget http://raw.githubusercontent.com/Bonveio/BonvScripts/master/DebianVPS-Installer

# Change the permission on the installer
sudo chmod +x DebianVPS-Installer

# Run installation process
sudo ./DebianVPS-Installer

# Reboot after completed
sudo reboot
