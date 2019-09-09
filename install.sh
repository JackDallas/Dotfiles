#!/bin/bash

if [ ! -d "$HOME/.local/bin" ]; then
  mkdir $HOME/.local/bin
fi

ln -svf "${pwd}/.bash_aliases" ~

apt install -y tar rar zip unzip uncompress