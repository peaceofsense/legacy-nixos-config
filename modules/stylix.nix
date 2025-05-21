{ config, pkgs, pkgsUnstable, ... }:

{
    stylix.enable = true;
    stylix.image = ./wallhaven17.png;   # Path to your wallpaper
    stylix.polarity = "dark";         # Affects calander and wttr module
    # Optional: use a base16 color scheme
    stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";
    stylix.cursor = {
        name = "Bibata-Modern-Ice";     
        package = pkgs.bibata-cursors;  
        size = 24;                      
    };
    stylix.fonts = {
        sizes = {
        applications = 10;
        desktop = 15;
        terminal = 12;
        popups = 10;
        };
    #    monospace = {
    #      name = "FiraCode Nerd Font Mono";
    #      package = pkgs.fira-code-nerdfont;
    #    };
        monospace = {
        name = "JetBrainsMono NF";
        package = pkgs.nerd-fonts.jetbrains-mono;
        };
        sansSerif = {
        name = "Inter";
        package = pkgs.google-fonts.override {fonts = ["Inter"];};
        };
        serif = {
        name = "Merriweather";
        package = pkgs.google-fonts.override { fonts = ["Merriweather"]; };
        };
    };
    stylix.targets.grub.enable = false;

}