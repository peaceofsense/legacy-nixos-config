{

  description = "yes";
  
  inputs = {
    nixpkgsStable.url = "nixpkgs/nixos-24.11"; # Change this to update version
    nixpkgsUnstable.url = "nixpkgs/nixos-unstable";
    solaar = {
      url = "https://flakehub.com/f/Svenum/Solaar-Flake/*.tar.gz"; # For latest stable version
      #url = "https://flakehub.com/f/Svenum/Solaar-Flake/0.1.1.tar.gz"; # uncomment line for solaar version 1.1.13
      #url = "github:Svenum/Solaar-Flake/main"; # Uncomment line for latest unstable version
      inputs.nixpkgs.follows = "nixpkgsStable";
    };
    astal = {
      url = "github:aylur/astal";
      inputs.nixpkgs.follows = "nixpkgsUnstable";
    };
    ags = {
      url = "github:aylur/ags";
      inputs.nixpkgs.follows = "nixpkgsUnstable";
    };
  };
  
  outputs = { self, nixpkgsStable, nixpkgsUnstable, astal, ags, solaar,... } @ inputs:
    let
      lib = nixpkgsStable.lib; # It is like pass nixpkgs to this var
      system = "x86_64-linux";
      #lib-un = inputs.nixpkgUnstable.lib;
      pkgs = nixpkgsStable.legacyPackages.${system};
      pkgsUnstable = nixpkgsUnstable.legacyPackages.${system};
      username = "peaceofsense";
    in {
    packages.${system}.default = ags.lib.bundle { 
      inherit pkgsUnstable;
      src = ./.;
      name = "my-shell"; # name of executable
      entry = "app.ts";
      gtk4 = false;

      # additional libraries and executables to add to gjs' runtime
      extraPackages = [
        #ags.packages.${system}.battery
        # pkgs.fzf
      ];
    };

    nixosConfigurations = {
      monolith = lib.nixosSystem { # System Name
        inherit system;        
	      modules = [ 
            ./configuration.nix 
            solaar.nixosModules.default 
          ];
        specialArgs = {
          inherit username;
          inherit pkgsUnstable;
          inherit astal;
        };
      };
    };
  };

}
