#! /bin/bash

mkdir -p ~/.local/share/fonts/{true,open}type

echo "Installing CodeNewRoman Nerd Font..."

wget "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/CodeNewRoman.zip"

unzip CodeNewRoman -d CodeNewRoman
mv CodeNewRoman/*otf ~/.local/share/fonts/opentype
rm -rf CodeNew*



echo "Installing SF Font..."

git clone --depth=1 https://github.com/sahibjotsaggu/San-Francisco-Pro-Fonts

mv San-Francisco-Pro-Fonts/*otf ~/.local/share/fonts/opentype

rm -rf San-Fran*
