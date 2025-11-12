{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    winboat
    freerdp
  ];

  virtualisation.docker = {
    enable = true;
  };
}