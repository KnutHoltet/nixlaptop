{ pkgs, ... }:

let

  swww-init = pkgs.writeShellScriptBin "swww-init" ''
    swww-daemon
    swww img ~/Downloads/gruvy.png
  '';

in {
  home.packages = [ swww-init ];

}
