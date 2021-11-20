#!/usr/bin/env bash

echo "[START]: general-packages installation..."
yes | sudo pacman -Syu

DOTFILES="$(dirname "$(dirname "${BASH_SOURCE[0]}")")";

packages="$(sed -e 's/\s*#.*$//g' -e '/^$/d' "$DOTFILES"/scripts/packages/pacman)"

echo "  > installing ~ $(<<< "$packages" tr '\n' ' ')"
_do pacman -S --needed --noconfirm - <<< "$packages"

echo "[FINISHED]: general-packages installation"
