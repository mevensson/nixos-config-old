{ config, pkgs, ... }:

{
  # Use the GRUB 2 boot loader.
  boot = {
    loader = {
      grub = {
        enable = true;
        version = 2;
        # efiSupport = true;
        # efiInstallAsRemovable = true;
        # efiSysMountPoint = "/boot/efi";
        configurationLimit = 10;
      };
    };
  };
}
