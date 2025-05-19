{
  imports = [
    ./mocha.nix
  ];
  programs.waybar.style = ''
    * {
      font-family: JetBrainsMono NF;
      font-size: 14px;
      min-height: 0;
    }

    #waybar {
      background: @base;
      color: @text;
      margin: 5px 5px;
    }

    #workspaces {
      margin: 5px;
      margin-left: 1rem;
    }

    #workspaces button {
      color: @surface1;
    }

    #workspaces button.active {
      color: @green;
      border-top: 2px solid @red;
      border-radius: 0;
    }

    #workspaces button:hover {
      color: @green;
    }

    #hyprland-workspaces {
      border-radius: 1rem;
      margin: 5px;
      background-color: @mantle;
    }

    #hyprland-workspaces button {
      color: @surface1;
      border-radius: 1rem;
      padding: 0.4rem;
    }

    #hyprland-workspaces button.active {
      color: @blue;
      border-radius: 1rem;
    }

    #hyprland-workspaces button:hover {
      color: @teal;
      border-radius: 1rem;
    }

    #hyprland-window {
      color: @text;
      border-radius: 1rem;
      margin-left: 2rem;
    }

    #network, #cpu, #memory {
      color: @surface2;
      margin-left: 8px;
      margin-right: 8px;
    }

    #bluetooth {
      color: @teal;
      border-radius: 1rem;
      margin: 5px;
    }

    #hyprland-language {
      color: @text;
      border-radius: 1rem;
      margin-left: 1rem;
      margin-right: 1rem;
    }

    #battery {
      color: @teal;
      margin-left: 8px;
      margin-right: 1rem;
    }

    #battery.charging {
      color: @yellow;
      margin-left: 8px;
      margin-right: 1rem;
    }

    #battery.warning:not(.charging) {
      color: @red;
      margin-left: 8px;
      margin-right: 1rem;
    }

    #backlight {
      color: @text;
      border-radius: 0;
      margin-left: 10px;
    }

    #pulseaudio {
      color: @blue;
      margin-left: 8px;
      margin-right: 8px;
    }

    #pulseaudio#microphone {
      color: @red;
      margin-left: 8px;
      margin-right: 8px;
    }

    #clock {
      color: @blue;
      font-family: Fira Code Nerd Font;
      border-radius: 0px 1rem 1rem 0px;
      margin-left: 1rem;
      margin-right: 8px;
    }

    #custom-music {
      color: @mauve;
      border-radius: 1rem;
    }

    #custom-lock {
      border-radius: 1rem 0px 0px 1rem;
      color: @lavender;
    }

    #custom-power {
      margin-right: 8px;
      border-radius: 0px 1rem 1rem 0px;
      color: @red;
    }

    #tray,
    #custom-weather,
    #custom-notification {
      margin-left: 8px;
      margin-right: 8px;
    }

    #keyboard-state label {
      color: @surface0;
      margin-left: 8px;
      margin-right: 8px;
    }

    #keyboard-state label.locked {
      color: @text;
      margin-left: 8px;
      margin-right: 8px;
    }

    #custom-nixicon {
      font-size: 22px;
      color: @green;
      margin-left: 8px;
      margin-right: 8px;
    }
  '';
}
