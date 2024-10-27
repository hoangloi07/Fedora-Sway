#! /bin/bash


mkdir -p ~/AppImages/


read -p "Install Obsidian? (Y/n) " -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]
then
	wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.7.4/Obsidian-1.7.4.AppImage
	chmod +x ./Obsidian*
	mv Obsidian* ~/AppImages
fi



