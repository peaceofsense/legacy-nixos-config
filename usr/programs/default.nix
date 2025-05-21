{
  imports = [
    ./rofi
    ./waybar
    ./swaync
    ./vscode
    ./kitty.nix
    ./yazi.nix
  ];

  programs.btop = {
    enable = true;
  };

}