{ pkgs, ... }: {
  imports = [
    ./cowsay.nix
  ];


  home.packages = with pkgs; [
    peaclock
    cbonsai
    pipes
    cmatrix
    asciiquarium
    ttysvr
  ];
}
