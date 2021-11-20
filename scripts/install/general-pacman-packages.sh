#! /bin/bash

echo "[START]: general-packages installation..."

yes | sudo pacman -Syu
yes | sudo pacman -Sy --needed --overwrite "*" --nodeps --nodeps `cat ./scripts/packages/pacman` || exit 1

echo "[FINISHED]: general-packages installation"
