#!/usr/bin/env bash

echo "[START]: aur/external packages installation ..."

# output packages directory creation
[ -d $HOME/Downloads/git-downloads ] || mkdir -p $HOME/Downloads/git-downloads

#
# AUR
#

# yay
# https://aur.archlinux.org/yay.git
sudo pacman -Qi yay || sh ./scripts/others/aur-get.sh https://aur.archlinux.org/yay.git
yay -Syu

yes "y" | yay -S --noconfirm --useask --norebuild --needed --batchinstall --mflags --skipinteg --overwrite "*" --nodeps `cat ./scripts/packages/aur` || exit 1

echo "[FINISHED]: aur/external-packages"
