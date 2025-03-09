{ pkgs, ... }:

let

  swww-init = pkgs.writeShellScriptBin "swww-init" ''
    swww-daemon
    swww img ~/Downloads/wallpapersden.com_makima-cool-chainsaw-man_2829x1545.jpg

  '';

in {
  home.packages = [ swww-init ];

}
