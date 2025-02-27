{ pkgs, ... }: {

  home.packages = with pkgs; [
    jetbrains.idea-ultimate
    arduino-ide
    android-studio
  ];

}
