{ config, lib, pkgs, ... }:

{
  fileSystems."/" =
    { device = "/dev/disk/by-uuid/e56bb276-f16b-491f-8430-2d60f42624a2";
      fsType = "btrfs";
      options = [ "subvol=@nixos" ];
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/BAFC-5F77";
      fsType = "vfat";
    };

}
