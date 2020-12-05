{ config, pkgs, ... }:
{
  # For Unstable run:
  # nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
  # nix-channel --update
  #
  # For 20.09 run:
  # nix-channel --add https://github.com/nix-community/home-manager/archive/release-20.09.tar.gz home-manager
  # nix-channel --update
  imports = [ <home-manager/nixos> ];
}
