{ pkgs, ... }:

let

  swww-init = pkgs.writeShellScriptBin "swww-init" ''
    swww-daemon
    swww img ~/Downloads/mario-pixel.gif
  '';

in {

}
