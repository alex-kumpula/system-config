{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    evremap
  ];
}