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
      ../../modules/development.nix
      ../../modules/disable-gdm-auto-suspend.nix
      ../../modules/discord.nix
      ../../modules/gnome.nix
      ../../modules/libreoffice.nix
      ../../modules/locales.nix
      ../../modules/networking.nix
      ../../modules/printing.nix
      ../../modules/sound.nix
      ../../modules/spotify.nix
      ../../modules/steam.nix

      ../../users/matte.nix
      ../../users/test.nix
    ];

  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "ryzen"; # Define your hostname.

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    gnome-mpv
  ];

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "19.09"; # Did you read the comment?
}
