#! /bin/bash

# Start
echo "[START]: xfce-packages installation..."

# Update System
yes | sudo pacman -Syu

# Install Pacman XFCE Packages
packages="$(sed -e 's/\s*#.*$//g' -e '/^$/d' ./scripts/packages/interfaces/xfce-pacman)"

echo "  > installing ~ $(<<< "$packages" tr '\n' ' ')"
printf '%s\n' "$packages" |
1>/dev/null 2>&1 pacman -S --needed --noconfirm -

# Install Aur XFCE Packages
yay -Syu
yes "y" | yay -S --noconfirm --useask --norebuild --needed --batchinstall --mflags --skipinteg --overwrite "*" --nodeps `cat ./scripts/packages/interfaces/xfce-aur` || exit 1

# Finish
echo "[FINISHED]: xfce-packages installation in background."
exit 0