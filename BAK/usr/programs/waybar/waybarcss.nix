{config, ...}:
{
 # imports = [
 #   ./themes/mocha.nix
 # ];
  stylix.targets.waybar.enable = false;
  stylix.targets.waybar.addCss = true;

  programs.waybar.style =   with config.lib.stylix.colors.withHashtag;
  ''
    @define-color base00 ${base00}; @define-color base01 ${base01}; @define-color base02 ${base02}; @define-color base03 ${base03};
    @define-color base04 ${base04}; @define-color base05 ${base05}; @define-color base06 ${base06}; @define-color base07 ${base07};
    @define-color base08 ${base08}; @define-color base09 ${base09}; @define-color base0A ${base0A}; @define-color base0B ${base0B};
    @define-color base0C ${base0C}; @define-color base0D ${base0D}; @define-color base0E ${base0E}; @define-color base0F ${base0F};
  ''
  
  +
  ''
    * {
        font-family: "UbuntuSans NFP Medium";
        font-size: 15px;
        min-height: 0;
      }

    #waybar {
      background: alpha(@base00, 0.9); /* Blur */
      color: @base05;            /* Default Foreground */
      /* margin: 5px 5px; */
      border-radius: 0px;
      /* border: 1px solid @base01; Lighter Background */
    }

    #workspaces {
      margin: 0px 1rem;
    }

    #workspaces button {
      background: transparent;
      color: @base06;            /* Light Foreground */
      padding: 0px 6px;
      margin: 0px;
      border-radius: 6px;
      border: 2px solid transparent;
    }

    #workspaces button.active {
      /* background: @base01;        Lighter Background */
      color: @base0B;            /* Strings/Inherited Class = Green */
      border: 0.09rem solid @base0B;
    }

    #workspaces button:hover {
      background: @base02;       /* Selection Background */
      color: @base0C;            /* Support/Regex = Teal */
    }

    #hyprland-workspaces {
      background-color: @base00; /* Default Background */
      border-radius: 10px;
      padding: 0px;
      margin: 5px;
    }

    #hyprland-workspaces button {
      background: transparent;
      color: @base06;            /* Light Foreground */
      border-radius: 1rem;
      padding: 0.4rem;
      margin: 0 2px;
    }

    #hyprland-workspaces button.active {
      color: @base0D;            /* Functions/Methods = Blue */
      background: @base02;       /* Selection Background */
    }

    #hyprland-workspaces button:hover {
      color: @base0C;            /* Support/Regex = Teal */
      background: @base03;       /* Comments/Invisibles */
    }

    #hyprland-window {
      color: @base05;            /* Dark Foreground */
      margin-left: 2rem;
    }

    #network, #cpu, #memory {
      color: @base05;            /* Keywords/Storage = Mauve */
      margin: 0 8px;
    }

    #bluetooth {
      color: @base0D;            /* Blue */
      margin: 0 8px;
    }

    #hyprland-language {
      color: @base05;            /* Default Foreground */
      background: @base01;       /* Lighter Background */
      border-radius: 6px;
      padding: 2px 8px;
      margin: 0 8px;
    }

    #battery {
      color: @base0B;            /* Green */
      margin: 0 8px;
      margin-right: 15px;

    }

    #battery.charging {
      color: @base0A;            /* Yellow */
      margin-right: 15px;    
    }

    #battery.warning:not(.charging) {
      color: @base08;            /* Red */
      margin-right: 15px;
    }

    #backlight {
      color: @base09;            /* Orange/Peach */
      margin-left: 10px;
    }

    #wireplumber {
      color: @base05;            /* Mauve */
      margin: 0 4px;
    }

    #wireplumber#microphone {
      color: @base05;            /* Pink */
      margin: 0 4px;
    }

    #clock {
      /* font-family: "JetBrainsMono NFP"; */
      color: @base05;            /* Blue */
      margin: 0 8px;
      padding: 0 5px;
    }


    #custom-music {
      color: @base0F;            /* Pink */
      padding: 0 8px;
    }

    #custom-lock {
      color: @base0E;            /* Mauve */
      padding: 0 8px;
      border-radius: 10px 0 0 10px;
    }

    #custom-power {
      color: @base08;            /* Red */
      padding: 0 8px;
      border-radius: 0 10px 10px 0;
    }
    #custom-weather {
      margin: 0 8px;
      color: @base05;
      font-weight: bold;
    }


    #custom-notification {
      margin-right: 8px;
      margin-left: 4px;
      color: @base08;            /* Dark Foreground */
    }

    #keyboard-state label {
      color: @base03;           /* Light Foreground */
      margin: 0 8px;
    }

    #keyboard-state label.locked {
      color: @base09;            /* Default Foreground */
    }

    #custom-nixicon {
      color: @base09;            /* Orange/Peach */
      margin: 0 8px;
    }

    #tray, #custom-weather {
      margin: 0 8px;
      color: @base05;           
    }
  '';
}
  

  
  /*
    #tray, #custom-weather {
      margin: 0 8px;
      color: @base05;           
    }
  "base00": #1b1c17,
  #base01#: #842313#,
  #base02#: #906021#,
  #base03#: #c39553#,
  #base04#: #d5b392#,
  #base05#: #e9e0c9#,
  #base06#: #f7d3c3#,
  #base07#: #e8dfc3#,
  #base08#: #7a9882#,
  #base09#: #8b9662#,
  #base0A#: #989435#,
  #base0B#: #a98b75#,
  #base0C#: #ec6831#,
  #base0D#: #ae8b4a#,
  #base0E#: #929289#,
  #base0F#: #cc7f1d#,
  #author#: #Stylix#,
  #scheme#: #Stylix#,
  #slug": "stylix"


  ''
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
  */

