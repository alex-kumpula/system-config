{ pkgs-unstable, ... }:
{
  environment.systemPackages = with pkgs-unstable; [
    winboat
    freerdp
  ];

  virtualisation.docker = {
    enable = true;
  };
}