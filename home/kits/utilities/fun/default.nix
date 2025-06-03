{ pkgs, ... }: {
  imports = [
    ./cowsay.nix
  ];


  home.packages = with pkgs; [
    peaclock
    cbonsai
    cava
    cmatrix
    pipes
    asciiquarium
    ttysvr
  ];
}
