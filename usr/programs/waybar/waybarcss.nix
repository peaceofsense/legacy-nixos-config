{
 # imports = [
 #   ./themes/mocha.nix
 # ];

  programs.waybar.style = ''
    @import "catppuccin.css";
    * {
      font-family: "JetBrainsMono NF", "Font Awesome 6 Free";
      font-size: 14px;
      min-height: 0;
    }

    #waybar {
      background: @base;
      color: @text;
      margin: 5px 5px;
      border-radius: 8px;
      border: 1px solid @surface0;
    }

    #workspaces {
      margin: 5px 1rem;
    }

    #workspaces button {
      background: transparent;
      color: @overlay1;
      padding: 4px 8px;
      margin: 2px;
      border-radius: 6px;
    }

    #workspaces button.active {
      background: @surface0;
      color: @green;
      border: 2px solid @green;
    }

    #workspaces button:hover {
      background: @surface1;
      color: @teal;
    }

    #hyprland-workspaces {
      background-color: @mantle;
      border-radius: 10px;
      padding: 4px;
      margin: 5px;
    }

    #hyprland-workspaces button {
      background: transparent;
      color: @overlay1;
      border-radius: 1rem;
      padding: 0.4rem;
      margin: 0 2px;
    }

    #hyprland-workspaces button.active {
      color: @blue;
      background: @surface1;
    }

    #hyprland-workspaces button:hover {
      color: @teal;
      background: @surface2;
    }

    #hyprland-window {
      color: @subtext1;
      margin-left: 2rem;
    }

    #network, #cpu, #memory {
      color: @lavender;
      margin: 0 8px;
    }

    #bluetooth {
      color: @sky;
      margin: 0 8px;
    }

    #hyprland-language {
      color: @text;
      background: @surface0;
      border-radius: 6px;
      padding: 2px 8px;
      margin: 0 8px;
    }

    #battery {
      color: @green;
      margin: 0 8px;
    }

    #battery.charging {
      color: @yellow;
    }

    #battery.warning:not(.charging) {
      color: @red;
    }

    #backlight {
      color: @peach;
      margin-left: 10px;
    }

    #pulseaudio {
      color: @mauve;
      margin: 0 8px;
    }

    #pulseaudio#microphone {
      color: @flamingo;
      margin: 0 8px;
    }

    #clock {
      font-family: "Fira Code Nerd Font", monospace;
      color: @blue;
      margin: 0 8px;
      padding: 0 10px;
    }

    #custom-music {
      color: @pink;
      padding: 0 8px;
    }

    #custom-lock {
      color: @lavender;
      padding: 0 8px;
      border-radius: 10px 0 0 10px;
    }

    #custom-power {
      color: @red;
      padding: 0 8px;
      border-radius: 0 10px 10px 0;
    }

    #tray, #custom-weather, #custom-notification {
      margin: 0 8px;
      color: @subtext0;
    }

    #keyboard-state label {
      color: @overlay1;
      margin: 0 8px;
    }

    #keyboard-state label.locked {
      color: @text;
    }

    #custom-nixicon {
      font-size: 20px;
      color: @peach;
      margin: 0 8px;
    }
  '';
}
