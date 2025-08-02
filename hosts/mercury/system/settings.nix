{ inputs, ... }:

{
  system = {
    name = "mercury";
    stateVersion = "25.05";

    autoUpgrade = {
      enable = true;
      dates = "weekly";
      operation = "switch";
      flake = "https://codeberg.org/hanna/flake";
    };
  };

  hardware = {
    nvidia.open = false;
    nvidia.nvidiaSettings = false;
    nvidia.modesetting.enable = true;
    nvidia-container-toolkit.enable = true;
    nvidia-container-toolkit.mount-nvidia-executables = false;
  };

  services.xserver.videoDrivers = ["nvidia"];

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

  hjem = {
    specialArgs = { inherit inputs; };
    clobberByDefault = true;
  };
}
