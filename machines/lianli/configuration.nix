# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix

      ../../modules/boot-systemd.nix

      ../../modules/auto-upgrade.nix
      ../../modules/avahi.nix
      ../../modules/disable-gdm-auto-suspend.nix
      ../../modules/firewall.nix
      ../../modules/gnome.nix
      ../../modules/httpd.nix
      ../../modules/locales.nix
      ../../modules/networking.nix
      ../../modules/plex.nix
      ../../modules/printing.nix
      ../../modules/samba.nix
      ../../modules/sound.nix
      ../../modules/ssh-server.nix
      ../../modules/transmission.nix

      ../../users/elin.nix
      ../../users/matte.nix
    ];

  boot.kernelPackages = pkgs.linuxPackages_latest;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
     git
     pciutils
  ];

  networking = {
    hostName = "lianli"; # Define your hostname.
  };

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system = {
    stateVersion = "18.09"; # Did you read the comment?
  };
}
