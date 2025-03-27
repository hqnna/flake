{
  inputs = {
    hm.url = "github:nix-community/home-manager/release-24.11";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    wsl.url = "github:nix-community/nixos-wsl/main";
    wsl.inputs.nixpkgs.follows = "nixpkgs";
    hm.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, wsl, hm }@inputs: {
    nixosConfigurations.amethyst = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      system = "x86_64-linux";

      modules = [
        ./hosts/amethyst/config.nix
        wsl.nixosModules.default 
        hm.nixosModules.default
      ];
    };

    nixosConfigurations.crystal = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      system = "aarch64-linux";

      modules = [
        ./hosts/crystal/config.nix
        hm.nixosModules.default
      ];
    };
  };
}
