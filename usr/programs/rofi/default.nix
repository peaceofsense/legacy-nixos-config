{ config, pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    plugins = [pkgs.rofimoji];
    package = pkgs.rofi-wayland;
    terminal = "kitty";
    extraConfig = {
      modi = "run,window,combi";
      icon-theme = "Papirus";
      show-icons = true;
      drun-display-format = "{icon} {name}";
      location = 0;
      disable-history = false;
      hide-scrollbar = true;
      display-drun = " Apps ";
      display-combi = " Combi ";
      display-run = " Run ";
      display-window = "Window";
      sidebar-mode = true;
    };
    theme = builtins.toFile "my-rofi-theme.rasi" ''

        * {
        rosewater: #f5e0dc;
        flamingo:  #f2cdcd;
        pink:      #f5c2e7;
        mauve:     #cba6f7;
        red:       #f38ba8;
        maroon:    #eba0ac;
        peach:     #fab387;
        yellow:    #f9e2af;
        green:     #a6e3a1;
        teal:      #94e2d5;
        sky:       #89dceb;
        sapphire:  #74c7ec;
        blue:      #89b4fa;
        lavender:  #b4befe;
        text:      #cdd6f4;
        subtext1:  #bac2de;
        subtext0:  #a6adc8;
        overlay2:  #9399b2;
        overlay1:  #7f849c;
        overlay0:  #6c7086;
        surface2:  #585b70;
        surface1:  #45475a;
        surface0:  #313244;
        base:      #1e1e2e;
        mantle:    #181825;
        crust:     #11111b;

        font: "JetBrains Mono 12";
        background-color: transparent;
        text-color: @text;
        margin: 0px;
        padding: 0px;
        spacing: 0px;
        }

        window {
        location: north;
        y-offset: calc(50% - 176px);
        width: 480;
        border-radius: 24px;
        background-color: @base;
        }

        mainbox {
        padding: 12px;
        }

        inputbar {
        background-color: @mantle;
        border-color: @surface2;
        border: 2px;
        border-radius: 16px;
        padding: 8px 16px;
        spacing: 8px;
        children: [ prompt, entry ];
        }

        prompt {
        text-color: @overlay1;
        }

        entry {
        placeholder: "Search";
        placeholder-color: @overlay0;
        }

        message {
        margin: 12px 0 0;
        border-radius: 16px;
        border-color: @surface0;
        background-color: @surface0;
        }

        textbox {
        padding: 8px 24px;
        }

        listview {
        background-color: transparent;
        margin: 12px 0 0;
        lines: 8;
        columns: 1;
        fixed-height: false;
        }

        element {
        padding: 8px 16px;
        spacing: 8px;
        border-radius: 16px;
        }

        element normal active,
        element alternate active {
        text-color: @crust;
        }

        element selected normal,
        element selected active {
        background-color: @surface1;
        }

        element-icon {
        size: 1em;
        vertical-align: 0.5;
        }

        element-text {
        text-color: inherit;
        }
    '';
  };
}