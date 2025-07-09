{

  description = "yes";

  inputs = {
    nixpkgsStable.url = "nixpkgs/nixos-25.05"; # Change this to update version
    nixpkgsUnstable.url = "nixpkgs/nixos-unstable";
    stylix = {
      url = "github:nix-community/stylix/release-25.05";
    };
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgsStable";
    };
    solaar = {
      url = "https://flakehub.com/f/Svenum/Solaar-Flake/*.tar.gz"; # For latest stable version
      #url = "https://flakehub.com/f/Svenum/Solaar-Flake/0.1.1.tar.gz"; # uncomment line for solaar version 1.1.13
      #url = "github:Svenum/Solaar-Flake/main"; # Uncomment line for latest unstable version
      inputs.nixpkgs.follows = "nixpkgsStable";
    };
    caelestia-shell = {
      url = "github:your-repo/caelestia-shell-nixos";
      inputs.nixpkgs.follows = "nixpkgsStable";
    };
    
  };

  outputs = 
  { self, nixpkgsStable, nixpkgsUnstable, home-manager, stylix, solaar, caelestia-shell, ... } @ inputs:
    let
      lib = nixpkgsStable.lib; # It is like pass nixpkgs to this var
      system = "x86_64-linux";
      #lib-un = inputs.nixpkgUnstable.lib;
      pkgs = nixpkgsStable.legacyPackages.${system};
      pkgsUnstable = nixpkgsUnstable.legacyPackages.${system};
      username = "peaceofsense";
    in {

    nixosConfigurations = {
      monolith = lib.nixosSystem { # System Name
        inherit system;
	      modules = 
          [
            ./configuration.nix
            home-manager.nixosModules.home-manager {
              home-manager.useGlobalPkgs = true;
              #home-manager.useUserPackages = true;
              home-manager.users.peaceofsense = import ./home.nix;
              # Optionally: home-manager.extraSpecialArgs = { inherit inputs; };
            }
            stylix.nixosModules.stylix
            solaar.nixosModules.default
            caelestia-shell.nixosModules.default {
              services.caelestia-shell.enable = true;
              # Optional: customize configuration
              services.caelestia-shell.config = {
              bar.workspaces.shown = 7;
              dashboard.weatherLocation = "40.7128,-74.0060"; # NYC coordinates
              };
            }
          ];
        specialArgs = {
          inherit username;
          inherit pkgsUnstable;
        };
      };
    };
    /*
    homeConfigurations = {
      peaceofsense = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          stylix.homeManagerModules.stylix 
          ./home.nix
          catppuccin.homeModules.catppuccin
        ];
      };
    };
    */
  };

}
