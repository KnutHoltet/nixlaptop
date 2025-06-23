{ pkgs, ... }: {

  imports = [
    ./neovim.nix
  ];

  home.packages = with pkgs; [
    jetbrains.idea-ultimate
    arduino-ide
    android-studio
  ];

}
