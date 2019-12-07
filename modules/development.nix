{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    fira-code
    git
  ];
}
