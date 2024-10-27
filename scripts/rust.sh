#! /bin/bash

read -p "Install Rust? (Y/n) " -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]
then
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

