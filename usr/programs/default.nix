{
  imports = [
    ./waybar
  ];

  programs.zen = {
    enable = true;
    defaultBrowser = true;
  };

  programs.btop = {
    enable = true;
    settings = {
      vim_keys = true;
    };
  };

}