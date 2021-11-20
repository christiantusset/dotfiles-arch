#!/bin/bash

option=$1

#shopt -s nocasematch
case "$option" in
    "all" )     ./scripts/pacman-packages.sh && ./setup-scripts/aur-packages.sh ;;
    "pacman" )  ./scripts/pacman-packages.sh ;;
    "aur" )     ./scripts/aur-packages.sh ;;

    *) echo "[ERROR]: no install flag with name \"$option\" found" && exit 1 ;;
esac
