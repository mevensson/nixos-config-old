{ config, pkgs, ... }:

{
  nix = {
    gc.automatic = true;
    optimise.automatic = true;
  };

  system = {
    autoUpgrade = {
      enable = true;
    };
  };
}
