#!/bin/bash

$dir=/mnt/data1/ytb/

sudo apt-get install samba samba-common-bin -y
sudo cp .smb.conf /etc/samba/smb.conf
sudo systemctl restart smbd
