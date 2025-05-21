{settings, config, pkgs, ... }:

{
    programs.hyprlock.enable = true;
    programs.hyprlock.settings = {
        path = "screenshot";
        general = {
            grace = 0;
            ignore_empty_input = true;
        };

        background = {
          #  path = "$HOME/nixos-config/module/wallpapers/wallhaven.png";
            blur_passes = 3;
            blur_size = 10;
            brightness = 0.60;
            contrast = 1.0;
            noise = 0.02;
        };

        input-field = {
            monitor = "";
            size = "250, 50";
            outline_thickness = 0;
            dots_size = 0.26;
          #  inner_color = "#${config.lib.stylix.colors.base05}";
            dots_spacing = 0.64;
            dots_center = true;
            fade_on_empty = true;
            placeholder_text = "<i>well well ...</i>";
            fail_text = "<i>who are you? <b>($ATTEMPTS)</b></i>";
            hide_input = false;
          #  check_color = "rgb(40, 200, 250)";
            position = "0, 100";
            halign = "center";
            valign = "bottom";
        };
    };
    programs.hyprlock.extraConfig = ''
label {
    monitor =
    text = cmd[update:1000] echo "<b><big> $(date +"%H:%M:%S") </big></b>"
  #  color = "#${config.lib.stylix.colors.base05}";

    font_size = 64
    font_family = Inter 10

    position = 0, 30
    halign = center
    valign = center
}

label {
    monitor =
    text = cmd[update:18000000] echo "$(date +'%A, %-d %B %Y')"
  #  color = "#${config.lib.stylix.colors.base05}";

    font_size = 24
    font_family = Inter 10

    position = 0, -60
    halign = center
    valign = center
}

# Degrees
label {
    monitor =
    text = cmd[update:18000000] echo "<b>Feels like<big> $(curl -s 'wttr.in?format=%t' | tr -d '+') </big></b>"
  #  color = $color7
    font_size = 10
    font_family = JetBrainsMono Nerd Font  

    position = 0, 40
    halign = center
    valign = bottom
}
    '';
}