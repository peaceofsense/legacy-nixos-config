{ config, pkgs, ... }:
{
  stylix.targets.rofi.enable = false;

  programs.rofi = {
    enable = true;
    plugins = [pkgs.rofimoji pkgs.rofi-calc];
    package = pkgs.rofi-wayland;
    cycle = true;
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
    theme = with config.lib.stylix.colors.withHashtag;

      builtins.toFile "theme.rasi" ''
      * {
          bg0:    ${base00}; // #1d2021 - Main background (very dark, perfect for deep contrast)
          bg1:    ${base01}; // #3c3836 - Slightly lighter, ideal for panels/input fields
          bg2:    ${base02}; // #504945 - Button background, secondary elements
          bg3:    ${base03}; // #665c54 - Borders, selected states, subtle dividers

          fg0:    ${base05}; // #d5c4a1 - Default text (good contrast on bg0/bg1)
          fg1:    ${base07}; // #fbf1c7 - Highlight text / selected item text
          fg2:    ${base04}; // #bdae93 - Prompt label, icons, secondary text
          fg3:    ${base03}; // #665c54 - Placeholder, disabled text, less emphasis
      }

      * {
        font: "JetBrains Mono 12";
        background-color: transparent;
        text-color: @fg0;
        margin: 0px;
        padding: 0px;
        spacing: 0px;
      }
      ${builtins.readFile ./rofi-style.rasi}'';
  };

}