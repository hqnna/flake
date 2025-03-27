{ config, lib, pkgs, ... }:

{
  zramSwap = {
    enable = true;
    memoryMax = 8589934592;
    memoryPercent = 50;
  };

  swapDevices = [{
    device = "/dev/zram0";
    discardPolicy = "both";
  }];
}
