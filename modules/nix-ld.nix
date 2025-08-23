{ config, pkgs, ... }:
{
  programs.nix-ld = {
    enable = true;
    libraries = with pkgs; [
      zlib
      stdenv.cc.cc.lib
      # add other libs required by your foreign binaries
    ];
  };
}