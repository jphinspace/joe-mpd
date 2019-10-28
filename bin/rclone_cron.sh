#!/bin/bash

if pidof -o %PPID -x "rclone_cron.sh"; then
    echo "rclone job already running" >> /tmp/welp.txt
    exit 1
fi
rclone --log-file='/tmp/rclone.log' -v --delete-before sync 'pcloud_music_remote:/My Music/Music' /media/usb-drive/Music
