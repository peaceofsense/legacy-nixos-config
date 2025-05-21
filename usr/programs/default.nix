{
  imports = [
    ./rofi
    ./waybar
    ./swaync
    ./vscode
    ./kitty.nix
    ./starship
    ./yazi.nix
  ];

  programs.btop = {
    enable = true;
  };

}