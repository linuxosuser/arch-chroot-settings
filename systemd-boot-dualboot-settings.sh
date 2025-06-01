#!/bin/bash

echo 'title   Arch Linux
linux   /vmlinuz-linux
initrd  /intel-ucode.img
initrd  /initramfs-linux.img' > /boot/loader/entries/arch.conf

echo 'title   Arch Linux Fallback
linux   /vmlinuz-linux
initrd  /intel-ucode.img
initrd  /initramfs-linux-fallback.img' > /boot/loader/entries/arch-fallback.conf

echo -n 'title   Windows Boot Manager
efi     /EFI/Microsoft/Boot/bootmgfw.efi' > /boot/loader/entries/windows.conf
