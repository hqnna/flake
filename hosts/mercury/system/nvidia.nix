{ pkgs, ... }:

{
  # Settings
  hardware = {
    # Enable NVIDIA drivers in WSL2
    nvidia.modesetting.enable = true;
    nvidia.nvidiaSettings = false;
    nvidia.open = true;

    # Enable the container toolkit
    nvidia-container-toolkit = {
      mount-nvidia-executables = false;
      enable = true;
    };
  };

  # Enable nvidia drivers for wayland/xorg
  services.xserver.videoDrivers = [ "nvidia" ];

  # These are needed for CUDA to work
  environment.sessionVariables = {
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
}
