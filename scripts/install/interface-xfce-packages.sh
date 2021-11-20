#! /bin/bash

echo "[START]: xfce-packages installation..."

yes | sudo pacman -Syu
yes | sudo pacman -Sy --needed --overwrite "*" --nodeps --nodeps `cat ./scripts/packages/interfaces/xfce` || exit 1

echo "[FINISHED]: xfce-packages installation"
