{ config, pkgs, ... }:

{
  users.groups.media = {
    # The range 500 - 1000 should be free
    gid = 600;
  };
}
