{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    fira-code
    git
  ];

  nix = {
    package = pkgs.nixUnstable;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };
}
