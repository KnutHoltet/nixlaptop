{pkgs, ... }: {
  imports = [
    ./kitty.nix
    ./ghostty.nix
  ];


  home.packages = with pkgs; [
    cool-retro-term
    hdrop
  ];
}
