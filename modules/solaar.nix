{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    solaar
  ];
}
