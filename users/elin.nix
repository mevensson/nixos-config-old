{ config, pkgs, ... }:

{
  users.users = {
    elin = {
      description = "Daniel Elin";
      isNormalUser = true;
      uid = 1002;
    };
  };
}
