{ config, pkgs, lib, ... }:

{

  wayland.windowManager.hyprland = {
    settings = {
      general = {
        gaps_in = 2;
        gaps_out = 2;
        border_size = 2;

        #col.active_border = "rgba(FF4500ee) rgba(00FFFFee) rgba(FFD700ee) rgba(8A2BE2ee) 45deg";
        #col.inactive_border = "rgba(000000aa)";
        #"col.inactive_border" = lib.mkForce "rgb(${config.lib.stylix.colors.base00})";
        #"col.active_border" = lib.mkForce "rgb(${config.lib.stylix.colors.base08})";
        resize_on_border = false;
        allow_tearing = false;
        layout = "dwindle";
      };

      decoration = {
        rounding = 5;
        active_opacity = 1.0;
        inactive_opacity = 0.9;
        shadow = {
          enabled = true;
          range = 4;
          render_power = 3;
        #  color = "rgba(1a1a1aee)";
        };
        blur = {
          enabled = true;
          size = 3;
          passes = 3;
          vibrancy = 0.1696;
        };
      };

      animations = {
        enabled = false;
        animation = [
          "global, 1, 4, default"
          "workspaces, 1, 5, default, slidefade 10%"
          "windows, 1, 6, default, slide"
          "windowsMove, 1, 3, default"
          "fade, 1, 4, default"
          "fadeSwitch, 1, 3, default"
          "border, 1, 3, default"
          "borderangle, 1, 4, default"
        ];
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "master";
      };

      misc = {
        force_default_wallpaper = -1;
        disable_hyprland_logo = true;
      };
    };
  };
}
