{ config, pkgs, ... }:

{
  networking = {
    # Enable network manager
    networkmanager = {
      enable = true;
    };
  };
}
