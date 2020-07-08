{ config, pkgs, lib, ... }:     # disable-gdm-auto-suspend.nix

{
  services.xserver.displayManager.gdm.autoSuspend = false;
}
