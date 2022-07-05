{ config, pkgs, ... }:

{
  users.users = {
    matte = {
      description = "Mattias Evensson";
      extraGroups = [ "wheel" "networkmanager" "transmission" "media" "plex" ];
      isNormalUser = true;
      uid = 1000;
    };
  };
}
