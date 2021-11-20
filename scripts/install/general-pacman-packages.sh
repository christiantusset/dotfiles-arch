#!/usr/bin/env bash

echo "[START]: general-packages installation..."
yes | sudo pacman -Syu

packages="$(sed -e 's/\s*#.*$//g' -e '/^$/d' ./scripts/packages/arch)"

echo "  > installing ~ $(<<< "$packages" tr '\n' ' ')"
_do pacman -S --needed --noconfirm - <<< "$packages"

echo "[FINISHED]: general-packages installation"
