{ pkgs, ... }: {
  imports = [
    ./network-manager-applet.nix
  ];

  home.packages = with pkgs; [
    openssh
  ];

}
