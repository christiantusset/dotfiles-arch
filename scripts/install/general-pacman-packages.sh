#!/usr/bin/env bash

echo "[START]: general-packages installation..."
yes | sudo pacman -Syu

packages="$(sed -e 's/\s*#.*$//g' -e '/^$/d' ~/Documents/dotfiles-arch/scripts/packages/pacman)"

echo "  > installing ~ $(<<< "$packages" tr '\n' ' ')"
_do pacman -S --needed --noconfirm - <<< "$packages"

echo "[FINISHED]: general-packages installation"
