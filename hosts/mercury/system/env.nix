{ pkgs, ... }:

{
  environment = {
    localBinInPath = true;
    memoryAllocator.provider = "mimalloc";
    defaultPackages = with pkgs; [ git wget helix ];

    sessionVariables = {
      EXTRA_CCFLAGS = "-I/usr/include";
      CUDA_PATH = "${pkgs.cudatoolkit}";
      MESA_D3D12_DEFAULT_ADAPTER_NAME = "Nvidia";
      EXTRA_LDFLAGS = "-L/lib -L${pkgs.linuxPackages.nvidia_x11}/lib";

      LD_LIBRARY_PATH = [
        "/usr/lib/wsl/lib"
        "${pkgs.ncurses5}/lib"
        "${pkgs.linuxPackages.nvidia_x11}/lib"
      ];
    };
  };

  programs = {
    gnupg.agent.enable = true;
    nix-ld.enable = true;
    fish.enable = true;
  };
}
