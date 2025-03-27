{ config, lib, pkgs, ... }:

{
  zramSwap = {
    enable = true;
    memoryMax = 17179869184;
    memoryPercent = 50;
  };

  swapDevices = [{
    device = "/dev/zram0";
    discardPolicy = "both";
  }];
}
