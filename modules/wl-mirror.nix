{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    wl-mirror
  ];
}