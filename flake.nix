{

  description = "yes";

  inputs = {
    nixpkgsStable.url = "nixpkgs/nixos-24.11"; # Change this to update version
    nixpkgsUnstable.url = "nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgsStable";
    };
    stylix = {
      url = "github:NixOS/nixpkgs/nixos-24.11";
      inputs.nixpkgs.follows = "nixpkgsStable";
    };
    solaar = {
      url = "https://flakehub.com/f/Svenum/Solaar-Flake/*.tar.gz"; # For latest stable version
      #url = "https://flakehub.com/f/Svenum/Solaar-Flake/0.1.1.tar.gz"; # uncomment line for solaar version 1.1.13
      #url = "github:Svenum/Solaar-Flake/main"; # Uncomment line for latest unstable version
      inputs.nixpkgs.follows = "nixpkgsStable";
    };
  };

  outputs = 
  { self, nixpkgsStable, nixpkgsUnstable, home-manager, stylix, solaar,... } @ inputs:
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
	      modules = [
            stylix.nixosModules.stylix
            ./configuration.nix
            solaar.nixosModules.default
          ];
        specialArgs = {
          inherit username;
          inherit pkgsUnstable;
        };
      };
    };
    homeConfigurations = {
      peaceofsense = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [./home.nix];
      };
    };
  };

}
