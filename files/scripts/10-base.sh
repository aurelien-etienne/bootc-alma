#!/usr/bin/env bash

set -xeuo pipefail

# Start customizing your image here

# Examples:
# dnf install -y 'dnf-command(config-manager)'
# dnf config-manager --set-enabled crb

# Some packages
dnf install -y firefox chromium

# TZ
ln -sf /usr/share/zoneinfo/Europe/Brussels /etc/localtime

# Autologin
mkdir -p /etc/systemd/system/graphical.target.wants/
ln -s /etc/systemd/system/sddm-autologin-setup.service /etc/systemd/system/graphical.target.wants/sddm-autologin-setup.service