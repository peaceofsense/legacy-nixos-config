{
  imports = [
    ./rofi
    ./waybar
    ./kitty.nix
    ./swaync.nix
    ./yazi.nix
  ];

  programs.btop = {
    enable = true;
    settings = {
      vim_keys = true;
    };
  };

}