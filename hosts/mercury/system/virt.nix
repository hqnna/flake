{
  virtualisation = {
    podman.enable = true;
    hypervGuest.enable = true;

    containers = {
      enable = true;
      registries.search = [
        "docker.io"
        "ghcr.io"
        "quay.io"
      ];
    };
  };
}
