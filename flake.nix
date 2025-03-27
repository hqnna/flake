{
  inputs = {
    age.url = "github:ryantm/agenix/main";
    hm.url = "github:nix-community/home-manager/release-24.11";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    wsl.url = "github:nix-community/nixos-wsl/main";
    age.inputs.nixpkgs.follows = "nixpkgs";
    wsl.inputs.nixpkgs.follows = "nixpkgs";
    hm.inputs.nixpkgs.follows = "nixpkgs";
    age.inputs.darwin.follows = "";
  };

  outputs = { self, nixpkgs, wsl, hm, age }@inputs:
    let
      shared = {
        configs = ./shared/configs;
        services = ./shared/services;
      };
    in {
      nixosConfigurations = {
        amethyst = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";

          specialArgs = {
            inherit inputs;
            inherit shared;
          };

          modules = [
            ./hosts/amethyst/config.nix
            wsl.nixosModules.default
            hm.nixosModules.default
          ];
        };

        crystal = nixpkgs.lib.nixosSystem {
          system = "aarch64-linux";

          specialArgs = {
            inherit inputs;
            inherit shared;
          };

          modules = [
            ./hosts/crystal/config.nix
            age.nixosModules.default
            hm.nixosModules.default
          ];
        };
      };
    };
}
