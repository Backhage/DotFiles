#!/bin/bash

mkdir -p "$HOME/.config"

# nvim
rm -rf "$HOME/.config/nvim"
ln -s "$HOME/Code/DotFiles/nvim" "$HOME/.config"
