{ pkgs, ... }: {
  imports = [
    ./firefox.nix
    ./brave.nix
  ];
  
  home.packages = with pkgs; [ vivaldi ];


}
