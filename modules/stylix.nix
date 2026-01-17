{ config, pkgs, pkgsUnstable, ... }:

    {
        stylix.enable = true;
        stylix.image = ./wallpapers/wallhaven.png;   # Path to your wallpaper
        stylix.polarity = "dark";         # Affects calander and wttr module
        # Optional: use a base16 color scheme
        #stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";
        stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/darcula.yaml";
        
        # similar
        #stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/rose-pine.yaml";
        #stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";

        # light
        #stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/rose-pine-dawn.yaml";
        #stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/github.yaml";

        stylix.cursor = {
            name = "Bibata-Modern-Ice";     
            #name = "Banana";
	        #package = pkgs.banana-cursor;  
	        package = pkgs.bibata-cursors;  
            size = 25;
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
                package = pkgs.inter;
            };
            serif = {
                name = "DejaVu Serif";
                package = pkgs.dejavu_fonts;
            };
        };
        stylix.targets.grub.enable = false;

    }

