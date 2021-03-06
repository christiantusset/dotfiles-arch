#!/usr/bin/env bash

package=$1

if [ ! -d ~/Downloads/git-downloads ]; then
  mkdir ~/Downloads/git-downloads
fi

cd ~/Downloads/git-downloads
git clone "$package"
cd "$(basename "$package" .git)" && makepkg -si
