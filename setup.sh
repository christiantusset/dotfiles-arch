#!/usr/bin/env bash

option=$1

case "$option" in
    "all" )     sudo sh ./scripts/install/general-pacman-packages.sh && sudo sh ./scripts/install/general-aur-packages.sh && sudo sh ./scripts/install/interface-xfce-packages.sh ;;
    "pacman" )  sudo sh ./scripts/install/general-pacman-packages.sh ;;
    "aur" )     sudo sh ./scripts/install/general-aur-packages.sh ;;
    "xfce" )    sudo sh ./scripts/install/interface-xfce-packages.sh ;;

    *) echo "[ERROR]: no install flag with name \"$option\" found" && exit 1 ;;
esac
