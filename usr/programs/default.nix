{
  imports = [
    ./waybar
    ./yazi.nix
  ];

  programs.btop = {
    enable = true;
    settings = {
      vim_keys = true;
    };
  };

}