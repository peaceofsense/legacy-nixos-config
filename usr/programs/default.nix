{
  imports = [
    ./rofi
    ./waybar
    ./swaync
    ./kitty.nix
    ./yazi.nix
  ];

  programs.btop = {
    enable = true;
    settings = {
      vim_keys = true;
    };
  };

}