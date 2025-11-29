{
  imports = [
    ./hypr
    #./kitty.nix
    ./obsidian.nix
    #./rofi
    ./starship
    #./vscode
    #./waybar
    ./yazi.nix
  ];

  programs.btop = {
    enable = true;
  };

}