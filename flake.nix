{
  inputs = {
    hjem.url = "github:feel-co/hjem/main";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    wsl.url = "github:nix-community/nixos-wsl/release-25.05";
    lsr.url = "git+https://tangled.sh/@rockorager.dev/lsr?ref=main";
    hjem.inputs.nixpkgs.follows = "nixpkgs";
    lsr.inputs.nixpkgs.follows = "nixpkgs";
    wsl.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, hjem, wsl, lsr }@inputs: {
    nixosConfigurations.mercury = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      system = "x86_64-linux";

      modules = [
        ./hosts/mercury/config.nix
        hjem.nixosModules.default
        wsl.nixosModules.default
      ];
    };
  };
}
