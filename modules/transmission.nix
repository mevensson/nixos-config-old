{ config, pkgs, ... }:

{
  imports =
    [
      # Copy the password line to this file
      ../../../transmission-password.nix
    ];

  services = {
    httpd = {
      virtualHosts = [
        {
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
        }
      ];
    };

    transmission = {
      enable = true;
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
