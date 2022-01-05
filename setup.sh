#!/bin/bash

option=$1

case "$option" in
    "all" )     sudo sh ./scripts/install/general-pacman-packages.sh && sh ./scripts/install/general-aur-packages.sh ;;
    "pacman" )  sh ./scripts/install/general-pacman-packages.sh ;;
    "aur" )     sh ./scripts/install/general-aur-packages.sh ;;
    #"xfce" )    sh ./scripts/install/interface-xfce-packages.sh ;;

    *) echo "[ERROR]: Not found any option with the name \"$option\"" && exit 1 ;;
esac
