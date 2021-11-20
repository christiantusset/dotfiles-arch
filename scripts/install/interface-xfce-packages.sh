#! /bin/bash

# Start
echo "[START]: xfce-packages installation..."

# Update System
yes | sudo pacman -Syu

# Install XFCE Packages
packages="$(sed -e 's/\s*#.*$//g' -e '/^$/d' ./scripts/packages/interfaces/xfce)"

echo "  > installing ~ $(<<< "$packages" tr '\n' ' ')"
printf '%s\n' "$packages" |
1>/dev/null 2>&1 pacman -S --needed --noconfirm -

# Finish
echo "[FINISHED]: xfce-packages installation in background."
exit 0