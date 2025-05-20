{ config, pkgs, ... }:

{
  home.username = "peaceofsense";
  home.homeDirectory = "/home/peaceofsense";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.

  home.stateVersion = "25.05"; # Please read the comment before changing.

  home.packages = [

  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {

  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  qt = {
    enable = true;
    platformTheme.name = "kvantum";
  #  style.package = pkgs.adwaita-qt;
    style.name = "kvantum";

  };

  home.pointerCursor = {
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Ice";
    size = 24;
    gtk.enable = true;
  };

  gtk = {
    enable = true;

    font = {
      name = "Inter";
      package = pkgs.google-fonts.override {fonts = ["Inter"];};
      size = 9;
    };

    theme.package = pkgs.adw-gtk3;
    theme.name = "adw-gtk3-dark";

    iconTheme.package = pkgs.papirus-icon-theme;
    iconTheme.name = "Papirus-Dark";

    gtk3.extraConfig = {
		  gtk-application-prefer-dark-theme = ''
			1
			'';
    };
    gtk4.extraConfig = {
		  gtk-application-prefer-dark-theme = ''
			1
			'';
    };
  };
  
  xdg.enable = true;
  xdg.userDirs = {
    extraConfig = {
      XDG_GAME_DIR = "${config.home.homeDirectory}/Media/Games";
      XDG_GAME_SAVE_DIR = "${config.home.homeDirectory}/Media/Game Saves";
    };
  };

  imports = [
    ./usr/programs
    ./usr/core-system
  ];
  
}
