{ config, pkgs, ... }:

{
  users.users = {
    matte = {
      description = "Mattias Evensson";
      extraGroups = [ "wheel" "networkmanager" "transmission" ];
      isNormalUser = true;
      uid = 1000;
    };
  };
}
