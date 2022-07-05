{ config, pkgs, ... }:

{
  imports =
    [
      # Copy the rpc-password to this file
      /etc/nixos/transmission-password.nix

      ../users/media-group.nix
    ];

  services = {
    httpd = {
      virtualHosts = {
        "bt.evensson.eu" = {
          hostName = "bt.evensson.eu";
          adminAddr = "mattias@evensson.eu";
          extraConfig = 
            ''
              ProxyPass         /  http://localhost:9091/
              ProxyPassReverse  /  http://localhost:9091/
              ProxyRequests     Off

              <Proxy *>
                Order deny,allow
                Allow from all
              </Proxy>

            '';
        };
      };
    };

    transmission = {
      enable = true;
      group = "media";
      settings = {
        download-dir = "/media/movies/incoming/";
        incomplete-dir-enabled = false;
        rpc-username = "bt";
        #rpc-password = "write-password-here";
        rpc-authentication-required = true;
      };
    };
  };
}
