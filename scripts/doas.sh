#! /bin/bash
sudo rm /usr/bin/sudo

doas ln -s $(which doas) /usr/bin/sudo
