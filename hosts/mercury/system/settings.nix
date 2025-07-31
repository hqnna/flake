{ inputs, ... }:

{
  system = {
    name = "mercury";
    stateVersion = "25.05";

    autoUpgrade = {
      enable = true;
      dates = "weekly";
      channel = "https://nixos.org/channels/nixos-25.05-small";
      operation = "boot";
    };
  };

  hjem = {
    specialArgs = { inherit inputs; };
    clobberByDefault = true;
  };

  nix = {
    gc.dates = "weekly";
    gc.automatic = true;
    optimise.automatic = true;
    optimise.dates = [ "daily" ];

    settings = {
      cores = 16;
      max-jobs = 32;
      auto-optimise-store = true;
      trusted-users = [ "hanna" ];
      experimental-features = [ "nix-command" "flakes" ];
      use-xdg-base-directories = true;
    };
  };

  nixpkgs = {
    overlays = [ inputs.nur.overlays.default ];
    config = { allowBroken = false; allowUnfree = true; };
  };
}
