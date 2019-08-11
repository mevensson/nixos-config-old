{ config, pkgs, lib, ... }:     # disable-gdm-auto-suspend.nix

{
  services.xserver.desktopManager.gnome3.autoSuspend = false;
}
