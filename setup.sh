#!/bin/bash

option=$1

case "$option" in
    "all" )     sh ./scripts/install/general-pacman-packages.sh && sh ./scripts/install/general-aur-packages.sh && sh ./scripts/install/interface-xfce-packages.sh ;;
    "pacman" )  sh ./scripts/install/general-pacman-packages.sh ;;
    "aur" )     sh ./scripts/install/general-aur-packages.sh ;;
    "xfce" )    sh ./scripts/install/interface-xfce-packages.sh ;;

    *) echo "[ERROR]: no install flag with name \"$option\" found" && exit 1 ;;
esac
