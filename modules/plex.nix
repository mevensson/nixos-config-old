{ config, pkgs, ... }:

{
  imports =
    [
      ./unfree.nix
    ];

  services = {
    plex = {
      enable = true;
    };
  };
}
