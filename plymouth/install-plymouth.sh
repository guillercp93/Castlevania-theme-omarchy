#!/bin/bash
# install-plymouth.sh — Install Castlevania Plymouth boot splash
# Run with sudo: sudo bash install-plymouth.sh

if [ "$EUID" -ne 0 ]; then
    echo "Please run with sudo: sudo bash install-plymouth.sh"
    exit 1
fi

echo "Installing Castlevania Plymouth theme..."
cp -r "$(dirname "$0")" /usr/share/plymouth/themes/castlevania
plymouth-set-default-theme -R castlevania
echo "Done! Castlevania Plymouth theme installed. Reboot to see the change."