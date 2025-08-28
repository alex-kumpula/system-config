{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    blueberry
  ];
}