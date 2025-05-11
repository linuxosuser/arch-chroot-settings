#!/bin/bash

echo -n 'LANG=hu_HU.UTF-8
LC_ADDRESS=hu_HU.UTF-8
LC_COLLATE=hu_HU.UTF-8
LC_CTYPE=hu_HU.UTF-8
LC_IDENTIFICATION=hu_HU.UTF-8
LC_MEASUREMENT=hu_HU.UTF-8
LC_MESSAGES=hu_HU.UTF-8
LC_MONETARY=hu_HU.UTF-8
LC_NAME=hu_HU.UTF-8
LC_NUMERIC=hu_HU.UTF-8
LC_PAPER=hu_HU.UTF-8
LC_TELEPHONE=hu_HU.UTF-8
LC_TIME=hu_HU.UTF-8' > /etc/locale.conf

echo -n 'KEYMAP=hu
FONT=lat2-16
FONT_MAP=8859-2' > /etc/vconsole.conf

echo -n 'homedevice' > /etc/hostname

echo '127.0.0.1  localhost
::1        localhost ip6-localhost ip6-loopback
ff02::1    ip6-allnodes
ff02::2    ip6-allrouters
127.0.1.1  homedevice' >> /etc/hosts

pacman -S networkmanager wpa_supplicant wireless_tools dialog --noconfirm
systemctl enable NetworkManager.service
