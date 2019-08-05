#!/bin/bash

# Migrate installation to new hardware
# https://wiki.archlinux.org/index.php/Migrate_installation_to_new_hardware

echo Starting Archlinux config setup

sudo pacman -Syu

cd ~/.config/

mkdir rofi i3 i3blocks termite dunst compton

touch $HOME/.config/gtk-3.0/gtk.css
echo 'VteTerminal, vte-terminal { padding: 30px; }' > $HOME/.config/gtk-3.0/gtk.css