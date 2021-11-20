#!/usr/bin/env bash

echo "[START]: general-packages installation..."

# Functions
function _exit ( ) {
  rm -f "$O" "$E"
  exit "$1"
}

function _do ( ) {
  "$@" 1>"$O" 2>"$E"
  _check "$?"
}

function _check ( ) {
  if [ "$1" -ne 0 ] ; then
    echo '! NONZERO RETURN CODE'
    echo ' > There was an error!'
    >&1 cat "$O"
    >&2 cat "$E"
    _exit "$1"
  fi
}

function _trap ( ) {
  echo '! TRAP'
  echo ' > There was an error!'
  _exit 70;
}

# Update System
yes | sudo pacman -Syu

# Install Packages
trap _trap SIGHUP SIGINT SIGTERM

DOTFILES="$(dirname "$(dirname "${BASH_SOURCE[0]}")")";
packages="$(sed -e 's/\s*#.*$//g' -e '/^$/d' "$DOTFILES"/scripts/packages/pacman)"

echo "  > installing ~ $(<<< "$packages" tr '\n' ' ')"
_do pacman -S --needed --noconfirm - <<< "$packages"

echo "[FINISHED]: general-packages installation"
