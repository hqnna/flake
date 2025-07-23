{
  documentation = {
    enable = true;
    dev.enable = true;
    doc.enable = true;
    info.enable = false;
    nixos.enable = false;

    man = {
      enable = true;
      generateCaches = true;
      man-db.enable = false;
      mandoc.enable = true;
    };
  };
}
