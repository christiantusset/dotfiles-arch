#!/bin/bash

option=$1

case "$option" in
    "all" )     ./scripts/install/general-pacman-packages.sh && ./scripts/install/general-aur-packages.sh && ./scripts/install/interface-xfce-packages.sh ;;
    "pacman" )  ./scripts/install/general-pacman-packages.sh ;;
    "aur" )     ./scripts/install/general-aur-packages.sh ;;
    "xfce" )    ./scripts/install/interface-xfce-packages.sh ;;

    *) echo "[ERROR]: no install flag with name \"$option\" found" && exit 1 ;;
esac
