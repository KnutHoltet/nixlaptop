{ pkgs, ... }:

let

  swww-init = pkgs.writeShellScriptBin "swww-init" ''
    swww-daemon
    swww img ~/Downloads/nios.png
  '';

in {
  home.packages = [ swww-init ];

}
