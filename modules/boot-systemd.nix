{ config, pkgs, ... }:

{
  # Use the systemd-boot EFI boot loader.
  boot = {
    loader = {
      efi = {
        canTouchEfiVariables = false;
      };
      systemd-boot = {
        enable = true;
        configurationLimit = 20;
      };
    };
  };
}
