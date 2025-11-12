{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    winboat
    freerdp
  ];
}