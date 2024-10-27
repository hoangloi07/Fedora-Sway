#! /bin/bash

mkdir -p ~/.local/share/fonts/{true,open}type

echo "Installing Monofur Nerd Font..."

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Monofur.zip

unzip Monofur.zip -d Monofur  

mv Monofur/*ttf ~/.local/share/fonts/truetype
