{ config, pkgs, ... }:

{
  users.users = {
    test = {
      description = "Test User";
      isNormalUser = true;
      uid = 1001;
    };
  };
}
