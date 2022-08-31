{ config, pkgs, ... }:
let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/master.tar.gz";
in
{
  imports = [
    (import "${home-manager}/nixos")
  ];

  home-manager.users.matte = { pkgs, ... }: {
    home.stateVersion = "22.05";

    programs.bash = {
      enable = true;
      historyControl = [ "erasedups" "ignoredups" "ignorespace" ];
      historyFileSize = -1;
      historySize = -1;
      initExtra = ''
        PROMPT_COMMAND="$PROMPT_COMMAND;history -a; history -n";
      '';
    };

    programs.git = {
      enable = true;
      userName = "Mattias Evensson";
      userEmail = "mattias@evensson.eu";
      aliases = {
       co = "checkout";
       ci = "commit";
       st = "status";
       br = "branch";
      };
      extraConfig = {
        rebase = {
          autoSquash = "true";
        };
        color = {
          ui = "auto";
        };
        pull = {
          rebase = "true";
        };
      };
    };

    programs.readline = {
      enable = true;
      bindings = {
        "\\C-p" = "history-search-backward";
        "\\C-n" = "history-search-forward";
      };
    };
  };
}
