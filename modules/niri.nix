{ inputs, pkgs, ... }:
{
  programs.niri.enable = true;
  programs.niri.package = inputs.niri-git.packages.${pkgs.system}.niri;
}