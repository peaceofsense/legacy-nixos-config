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
    theme = ./rofi-style.rasi;
  };
  
}