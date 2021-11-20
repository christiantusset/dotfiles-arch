#!/usr/bin/env bash

# Start
echo "[START]: general-packages installation..."

# Update System
yes | sudo pacman -Syu

# Install Packages
packages="$(sed -e 's/\s*#.*$//g' -e '/^$/d' ./scripts/packages/pacman)"

echo "  > installing ~ $(<<< "$packages" tr '\n' ' ')"
printf '%s\n' "$packages" |
1>/dev/null 2>&1 pacman -S --needed --noconfirm -

# Finish
echo "[FINISHED]: general-packages installation"
exit 0