import os


packages = [
    "gcc",
    "vim",
    "helix",
    "fish",
    "opendoas",
    "alacritty",
    "nnn",
    "zoxide",
    "exa",
    "bat",
    "waybar",
    "git",
    "neovim",
    "fzf",
    "flatpak",
    "pamixer",
    "xset",
    "slurp",
    "zathura",
    "zathura-plugins-all"
]

listpkg = ""

for package in packages:
    listpkg = listpkg + " " + package


os.system("sudo dnf install" + listpkg)
