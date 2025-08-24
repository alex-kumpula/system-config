{ pkgs-unstable, ... }:
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

  environment.systemPackages = with unstable-pkgs; [
    # ... other packages
    xkeyboard-config
  ];

  programs.gamescope = {
    enable = true;
    package = pkgs-unstable.gamescope;
    capSysNice = false;
  };

  services.ananicy = {
    enable = true;
    package = pkgs-unstable.ananicy-cpp;
    rulesProvider = pkgs-unstable.ananicy-cpp;
    extraRules = [
      {
        "name" = "gamescope";
        "nice" = -20;
      }
    ];
  };
}