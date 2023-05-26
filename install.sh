#!/bin/bash

mkdir -p "$HOME/.config"

# nvim
rm -rf "$HOME/.config/nvim"
ln -s "$HOME/Code/DotFiles/nvim" "$HOME/.config"

# tmux
mkdir -p "$HOME/.config/tmux"
ln -sf "$HOME/Code/DotFiles/tmux/tmux.conf" "$HOME/.config/tmux/tmux.conf"
rm -rf "$HOME/.tmux/plugins/tpm"
git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
