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

  outputs = { self, nixpkgs, wsl, hm, age }@inputs: {
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
        age.nixosModules.default
        hm.nixosModules.default
      ];
    };
  };
}
