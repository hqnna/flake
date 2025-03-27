{ config, lib, pkgs, ... }:

{
  boot = {
    crashDump.enable = true;
    crashDump.reservedMemory = "1G";
    readOnlyNixStore = true;
    tmp.cleanOnBoot = true;

    kernelPackages = pkgs.linuxPackages_latest;

    kernel.sysctl = {
      "net.ipv4.ip_forward" = true;
      "vm.watermark_boost_factor" = 0;
      "vm.watermark_scale_factor" = 125;
      "vm.page-cluster" = 0;
      "vm.swappiness" = 150;
    };
  };
}
