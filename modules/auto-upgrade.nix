{ config, pkgs, ... }:

{
  nix = {
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 90d";
    };
    optimise.automatic = true;
  };

  system = {
    autoUpgrade = {
      enable = true;
    };
  };
}
