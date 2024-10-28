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
    "mako",
    "git",
    "neovim",
    "fzf",
    "flatpak",
    "pamixer",
    "xset",
    "grim",
    "slurp",
    "zathura",
    "zathura-plugins-all",
    "hyprland",
    "hyprpaper"
]

listpkg = ""

for package in packages:
    listpkg = listpkg + " " + package


os.system("sudo dnf install" + listpkg)
