#!/bin/bash

# Script to randomly set Background from files in a directory

# Directory Containing Pictures
DIR="/home/koume/Pictures"

# Command to Select a random jpg file from directory
PIC=$(ls $DIR/* | shuf -n1)

# Command to set Background Image
URI=file://$PIC
gsettings set org.cinnamon.desktop.background picture-uri $URI
