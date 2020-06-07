#!/usr/bin/env bash

apt-get update

apt-get install curl

curl https://rclone.org/install.sh | sudo bash

mkdir /mnt/TeamDrive

curl https://raw.githubusercontent.com/ConnorFreebairn/TeamDrive/master/rclone%40TeamDrive.service --output "/etc/systemd/system/rclone@TeamDrive.service"

systemctl enable rclone@TeamDrive.service

systemctl start rclone@TeamDrive.service