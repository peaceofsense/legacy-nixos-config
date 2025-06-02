{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    settings = {
      # AUTOSTART
      exec-once = [
        "[workspace 9 silent] ferdium"
        "[workspace 8 silent] thunderbird"
        "hyprpaper"
        "swaync" # notification
        #waybar
        # "hyprctl setcursor Bibata-Modern-Classic 24"
        "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
        "polkit-agent-helper-1"
        "systemctl start --user polkit-gnome-authentication-agent-1"
      ];

      exec = [
        "gammastep -l 52.52:13.41 -t 6500:3500 &" # berlin
      ];

      # Cursor settings
      cursor = {
        no_hardware_cursors = true;
      };
    };
  };
}
