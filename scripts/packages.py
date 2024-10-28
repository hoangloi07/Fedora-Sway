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
    "hyprpaper",
    "hyprlock",
    "hypridle",
    "pipewire",
    "libgtop2",
    "bluez",
    "bluez-tools",
    "grimblast",
    "hyprpicker",
    "btop",
    "NetworkManager",
    "wl-clipboard",
    "swww",
    "brightnessctl",
    "power-profiles-daemon",
    "gvfs",
    "playerctl"
]


listpkg = ""

for package in packages:
    listpkg = listpkg + " " + package


os.system("sudo dnf install" + listpkg)
