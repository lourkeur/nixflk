# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  boot.initrd.availableKernelModules = [ "ehci_pci" "ahci" "xhci_pci" "usbhid" "usb_storage" "sd_mod" "sr_mod" ];
  boot.initrd.kernelModules = [ "dm-snapshot" ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/2b748e67-1b5a-45e0-a24c-bbd82a59a96b";
      fsType = "ext4";
    };

  fileSystems."/nix" =
    { device = "/dev/disk/by-uuid/2d58226b-ce26-478c-8ce5-383742310aa7";
      fsType = "ext4";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/799C-89B5";
      fsType = "vfat";
    };

  fileSystems."/var/lib/transmission" =
    { device = "/dev/disk/by-uuid/3dbe6b94-7de6-466c-b3cf-de71c61e892b";
      fsType = "ext4";
    };

  fileSystems."/home" =
    { device = "/dev/disk/by-uuid/fb7bc4c9-a8e7-4f21-9d09-5c8ffa8d6265";
      fsType = "ext4";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/cd2acac6-8c75-4381-b71c-905d72064b7a"; }
      { device = "/dev/disk/by-uuid/9bbde27c-83dc-4010-9ec4-4f297b222415"; }
    ];

  nix.maxJobs = lib.mkDefault 8;
  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
}