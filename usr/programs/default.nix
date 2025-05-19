{
  imports = [
    ./waybar
  ];

  programs.btop = {
    enable = true;
    settings = {
      vim_keys = true;
    };
  };

}