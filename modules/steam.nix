{ pkgs, pkgs-unstable, ... }:
{
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    gamescopeSession.enable = true;
  };


  programs.gamemode.enable = true;
  
  # programs.gamescope = {
  #   enable = true;
  #   package = pkgs-unstable.gamescope;
  # };

  environment.systemPackages = with pkgs; [
    # ... other packages
    xkeyboard-config
  ];

  programs.gamescope = {
    enable = true;
    package = pkgs.gamescope;
    capSysNice = false;
  };

  services.ananicy = {
    enable = true;
    package = pkgs.ananicy-cpp;
    rulesProvider = pkgs.ananicy-cpp;
    extraRules = [
      {
        "name" = "gamescope";
        "nice" = -20;
      }
    ];
  };
}