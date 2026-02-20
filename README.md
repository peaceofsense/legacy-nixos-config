# ❄️ NixOS Configuration: Monolith

![System Preview](image.png)

This repository contains my personal NixOS configuration. It is built using **Nix Flakes** and manages user environments through **Home Manager** as a NixOS module.

```text
.
├── flake.nix                # Entry point & inputs
├── configuration.nix        # Core system settings
├── home.nix                 # Home Manager (User) entry point
├── modules/                 # [LEGACY] System-level modules
│   └── wallpapers/          # System-wide wallpaper assets
└── usr/                     # [LEGACY] User-level configurations
    └── programs/            # App-specific settings (Hyprland, Kitty, VSCode)

### Rebuild
sudo nixos-rebuild switch --flake .#monolith
