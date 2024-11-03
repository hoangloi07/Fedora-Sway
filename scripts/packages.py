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
    "grim",
    "slurp",
    "zathura",
    "zathura-plugins-all",
    "hyprland",
    "hyprpaper",
    "hyprlock",
    "hypridle",
    "hyprpicker",
    "btop",
    "NetworkManager",
    "wl-clipboard",
    "brightnessctl",
    "gvfs",
    "playerctl",
    "stow",
    "nodejs",
    "clang",
    "clang-tools-extra",
    "rofi"
]


listpkg = ""

for package in packages:
    listpkg = listpkg + " " + package


os.system("sudo dnf install" + listpkg)
