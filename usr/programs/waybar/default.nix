 { config, pkgs, lib, ... }:

{ 
  programs.waybar = {
    enable = false;
    systemd.enable = true;
  };

  imports = [
    ./waybarsettings.nix
    ./waybarcss.nix
  ];
}