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
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgsStable";
    };

    quickshell = {
      url = "github:outfoxxed/quickshell";
      inputs.nixpkgs.follows = "nixpkgsUnstable";
    };
    noctalia = {
      url = "github:noctalia-dev/noctalia-shell";
      inputs.nixpkgs.follows = "nixpkgsUnstable";
      inputs.quickshell.follows = "quickshell";  # Use same quickshell version
    };
    
  };

  outputs = 
  { self, nixpkgsStable, nixpkgsUnstable, home-manager, zen-browser, stylix, solaar, noctalia, quickshell, ... } @ inputs:
    let
      lib = nixpkgsStable.lib; # It is like pass nixpkgs to this var
      system = "x86_64-linux";
      #lib-un = inputs.nixpkgUnstable.lib;
      pkgs = nixpkgsStable.legacyPackages.${system};
      pkgsUnstable = nixpkgsUnstable.legacyPackages.${system};
      username = "peaceofsense";
    in {

    nixosConfigurations = {
      monolith = lib.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix

          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.users.peaceofsense = import ./home.nix;
          }

          stylix.nixosModules.stylix
          solaar.nixosModules.default

          { environment.systemPackages = [ inputs.zen-browser.packages.${system}.default ]; }

          ({
            environment.systemPackages = with pkgsUnstable; [
              noctalia.packages.${system}.default
              quickshell # ← after overlay, this works
            ];
          })

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
