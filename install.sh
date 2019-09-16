#!/bin/bash

# Install MPD on my Raspberry Pi (System-wide configuration)
# Joe Hallahan jphinspace@gmail.com

# Display commands as they are run
set -x

echo "Installing mpd..."
sudo apt-get install mpd

echo "Updating mpd.conf"
sudo cp ./config/mpd.conf /etc/

echo "Starting mpd service"
sudo systemctl restart mpd
