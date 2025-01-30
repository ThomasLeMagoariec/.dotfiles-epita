#!/bin/bash

dot_list="bashrc config emacs gitconfig gitignore jnewsrc mozilla msmtprc muttrc signature slrnrc ssh thunderbird vim vimrc Xdefaults sl alacritty.toml"

for f in $dot_list; do
    rm -rf "$HOME/.$f"
    ln -s "$AFS_DIR/.confs/$f" "$HOME/.$f"

ln -s "$AFS_DIR/.confs/zshrc" "$HOME/.zshrc"
ln -s "$AFS_DIR/.confs/p10k" "$HOME/.p10k.zsh"

mkdir -p "$HOME/.config/rofi"
ln -s "$AFS_DIR/.confs/rofi/config.rasi" "$HOME/.config/rofi/config.rasi"
ln -s "$AFS_DIR/.confs/rofi/current.rasi" "$HOME/.config/rofi/current.rasi"

ln -s "$AFS_DIR/.confs/nvim" "$HOME/.config/nvim"

pkgs="neovim vscodium zsh neofetch rofi brave"
for p in $pkgs; do
    nix profile install nixpkgs#$p
done

setxkbmap fr -option caps:swapescape

