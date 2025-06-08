{
  imports = [
    ./hypr
    ./kitty.nix
    ./obsidian.nix
    ./rofi
    ./starship
    ./swaync
    ./vscode
    ./waybar
    ./yazi.nix
  ];

  programs.btop = {
    enable = true;
  };

}