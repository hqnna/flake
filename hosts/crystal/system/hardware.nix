{ modulesPath, ... }:

{
  imports = [
    (modulesPath + "/profiles/qemu-guest.nix")
  ];
  
  boot.loader.grub.device = "/dev/sda";

  boot.initrd.kernelModules = [
    "xt_comment"
    "xt_addrtype"
    "veth"
    "nvme"
  ];

  boot.initrd.availableKernelModules = [
    "ata_piix"
    "uhci_hcd"
    "xen_blkfront"
    "vmw_pvscsi"
  ];
 
  fileSystems."/" = {
    device = "/dev/sda1";
    fsType = "ext4";
  };
}
