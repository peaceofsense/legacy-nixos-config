{ pkgs, ...}: {
  home.packages = [ pkgs.hyprpaper ];

  services.hyprpaper = {
    enable = true;
    package = pkgs.hyprpaper;
    settings = {
      ipc = true;
      splash = false;

      preload = [
        "~/nixos-config/module/wallpapers/wallhaven.png"
      ];
      wallpaper = [
        "HDMI-A-2,~/nixos-config/module/wallhaven.png"
        "eDP-1,~/nixos-config/module/wallhaven.png"
      ];
    };
  };
}
