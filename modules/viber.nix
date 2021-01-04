{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    viber
  ];
}
