#!/bin/bash
# Clean up the desktop of user files by moving them into a dustbin
# This script can be executed by cron for automated sweeping

# Move all files on Desktop to the Dustbin folder
mv ~/Desktop/* ~/Dustbin

# Create a symbolic link to Dustbin on Desktop
ln -s ~/Dustbin ~/Desktop/Dustbin

# Remove the Dustbin symbolic link within Dustbin
rm ~/Dustbin/Dustbin

# Delete files last accessed more than than 90 days prior
# from the dustbin
find ~/Dustbin/* -atime +90 -exec rm {} \;