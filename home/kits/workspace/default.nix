{ pkgs, ... }: {
  imports = [
    ./obsidian.nix
    ./libreoffice.nix
  ];

  home.packages = with pkgs; [ anytype ];
}

