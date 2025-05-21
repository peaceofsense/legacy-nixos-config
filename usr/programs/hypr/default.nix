{ config, pkgs, ... }:

{
  imports = [
    ./hypridle.nix
    ./hyprlock.nix
    ./hyprpaper.nix
    ./hyprland/autostart.nix
    ./hyprland/appearance.nix
    ./hyprland/keybinding.nix
    ./hyprland/window.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
      # Monitors
      monitor = [
        # "monitor = ,preferred,auto-up,1" # Uncomment for quick fix if needed
        "eDP-1, 1920x1080, -1600x200, 1.2"
        # "DP-1, 1920x1080,1920x100, 1"
        "HDMI-A-2, 1920x1080@60,0x0, 1"
      ];
      # Monitors top and bottom
      #monitor=HDMI-A-2,2560x1440,0x0,1
      #monitor=eDP-1,1920x1080,320x1440,1

      # Triple monitor
      #monitor=DP-6,1920x1080@60,0x0,1
      #monitor=DP-7,1920x1080@60,1920x0,1
      #monitor=eDP-1,1920x1080@60,3840x0,1

      # Program variables
      "$mainMod" = "SUPER";
      "$terminal" = "kitty";
      "$fileManager" = "nautilus --new-window";
      "$powermenu" = "rofi -show power-menu -modi power-menu:~/dotfiles/.config/rofi/power-menu";
      "$menu" = "rofi -show drun";

      # Input configuration
      input = {
        kb_layout = "de";
        kb_variant = "";
        kb_model = "";
        kb_options = "grp:alt_shift_toggle";
        kb_rules = "";
        follow_mouse = 1;
        sensitivity = 0;
        touchpad = {
          natural_scroll = true;
        };
      };

      # Gestures configuration
      gestures = {
        workspace_swipe = true;
        workspace_swipe_fingers = 3;
      };

      # Per-device input configs (as a list of attribute sets)
      device = [
        {
          name = "epic-mouse-v1";
          sensitivity = -0.5;
        }
        {
          name = "tpps/2-ibm-trackpoint";
          sensitivity = 0.5;
        }
      ];
    };
  };
}
