#!/bin/bash

INSTALL_DIR=$(pwd);

if [ ! -d "$HOME/.local/bin" ]; then
  mkdir -p "$HOME/.local/bin"
fi

ln -svf "$INSTALL_DIR/.bash_aliases" ~

for file in "$INSTALL_DIR"/.local/bin/*
do
  chmod +x "$file"
  ln -svf "${file}" ~/.local/bin
done

sudo apt install -y tar rar zip unzip libssl-dev libssl-dev git

if cargo version; then
  cargo install cargo-edit cargo-outdated cargo-tree cargo-update cargo-audit
fi

git config --global push.default current
