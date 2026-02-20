# ❄️ NixOS Configuration: Monolith

![System Preview](image.png)

This repository contains my personal NixOS configuration. It is built using **Nix Flakes** and manages user environments through **Home Manager** as a NixOS module.

.
├── flake.nix               # Entry point & inputs
├── configuration.nix       # Core system settings
├── home.nix                # Home Manager (User) entry point
├── modules/                # System-level modules (Pipewire, Fonts, etc.)
│   └── wallpapers/         # System-wide wallpaper assets
└── usr/                    # User-level configurations
    └── programs/           # App-specific settings (Hyprland, Kitty, VSCode)

```bash
sudo nixos-rebuild switch --flake .#monolith
