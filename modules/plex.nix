{ config, pkgs, ... }:

{
  imports =
    [
      ./unfree.nix

      ../users/media-group.nix
    ];

  services = {
    plex = {
      enable = true;
      group = "media";
    };
  };
}
