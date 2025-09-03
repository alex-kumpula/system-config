{ ... }:
{
  services.qbittorrent = {
      enable = true;
      user = "alex";
      group = "users";
      openFirewall = true;
      webuiPort = 8080;
      torrentingPort = 6881;
  };  
}