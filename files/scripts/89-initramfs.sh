#!/bin/bash

# This is needed to have the wanted keymap for the LUKS prompt in the initramfs
# Wanted keymap is declared in /usr/lib/bootc/kargs.d/keymap.toml

set -xeu

kver=$(cd /usr/lib/modules && echo *)
mkdir -p /var/tmp
dracut -vf "/usr/lib/modules/$kver/initramfs.img" "$kver"