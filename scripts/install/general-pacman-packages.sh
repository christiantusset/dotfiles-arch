#!/usr/bin/env bash

# Start
echo "[START]: general-packages installation..."

# Temp Files
O="$(mktemp --tmpdir install-arch-out.XXXXXXXX)"
E="$(mktemp --tmpdir install-arch-err.XXXXXXXX)"

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
packages="$(sed -e 's/\s*#.*$//g' -e '/^$/d' ./scripts/packages/pacman)"

echo "  > installing ~ $(<<< "$packages" tr '\n' ' ')"
_do pacman -S --needed --noconfirm - <<< "$packages"

# Docker
sudo pacman -S --needed --noconfirm docker docker-compose
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -aG docker $USER
systemctl start docker.service /status/stop

# Finish
echo "[FINISHED]: general-packages installation"
_exit 0