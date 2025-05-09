{ pkgs, ... }:
let
  swayidle-sh = pkgs.writeShellScriptBin "swayidle-sh" ''
    hyprlock
  '';
in {
  home.packages = [ swayidle-sh ];
}
