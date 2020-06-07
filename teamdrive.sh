#!/usr/bin/env bash

curl https://raw.githubusercontent.com/ConnorFreebairn/TeamDrive/rclone@TeamDrive.service --output "/etc/systemd/system/rclone@TeamDrive.service"

systemctl enable rclone@TeamDrive.service

systemctl start rclone@TeamDrive.service