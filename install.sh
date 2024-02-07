#!/bin/bash

mkdir -p "$HOME/.config"
mkdir -p "$HOME/.local/bin"

# nvim
rm -rf "$HOME/.config/nvim"
ln -s "$HOME/Code/DotFiles/nvim" "$HOME/.config"

# tmux
# NOTE: After starting tmux, press "CTRL+<space> I" to install tpm plugins
mkdir -p "$HOME/.config/tmux"
ln -sf "$HOME/Code/DotFiles/tmux/tmux.conf" "$HOME/.config/tmux/tmux.conf"
rm -rf "$HOME/.tmux/plugins/tpm"
git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"

# bash
echo ". \"\$HOME/Code/DotFiles/bash/env\"" >> "$HOME/.bashrc"
