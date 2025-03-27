{ config, lib, pkgs, ... }:

{
  boot = {
    kernelPackages = pkgs.linuxPackages_hardened;
    readOnlyNixStore = true;
    tmp.cleanOnBoot = true;

    kernel.sysctl = {
      "net.ipv4.ip_forward" = true;
      "vm.watermark_boost_factor" = 0;
      "vm.watermark_scale_factor" = 125;
      "vm.page-cluster" = 0;
      "vm.swappiness" = 150;
    };
  };
}
