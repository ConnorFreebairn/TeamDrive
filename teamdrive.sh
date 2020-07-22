#!/usr/bin/env bash

# apt update
# apt install curl -y
# curl https://rclone.org/install.sh | sudo bash

mkdir /mnt/TeamDrive

systemctl stop rclone@TeamDrive.service

systemctl disable rclone@TeamDrive.service

curl https://raw.githubusercontent.com/ConnorFreebairn/TeamDrive/master/rclone%40TeamDrive.service --output "/etc/systemd/system/rclone@TeamDrive.service"

systemctl enable rclone@TeamDrive.service

systemctl start rclone@TeamDrive.service
