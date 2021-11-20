#!/bin/bash

option=$1

case "$option" in
    "all" )     sudo bash /scripts/install/general-pacman-packages.sh && sudo bash /scripts/install/general-aur-packages.sh && sudo bash /scripts/install/interface-xfce-packages.sh ;;
    "pacman" )  sudo bash /scripts/install/general-pacman-packages.sh ;;
    "aur" )     sudo bash /scripts/install/general-aur-packages.sh ;;
    "xfce" )    sudo bash /scripts/install/interface-xfce-packages.sh ;;

    *) echo "[ERROR]: no install flag with name \"$option\" found" && exit 1 ;;
esac
