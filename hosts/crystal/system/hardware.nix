{ modulesPath, ... }:

{
  imports = [
    (modulesPath + "/profiles/qemu-guest.nix")
  ];

  boot.initrd.kernelModules = [ "nvme" ];

  boot.loader.grub = {
    efiSupport = true;
    efiInstallAsRemovable = true;
    device = "nodev";
  };
  
  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/4DBB-11CF";
    fsType = "vfat";
  };
  
  boot.initrd.availableKernelModules = [
    "ata_piix"
    "uhci_hcd"
    "xen_blkfront"
  ];
 
  fileSystems."/" = {
    device = "/dev/sda1";
    fsType = "ext4";
  };
}
