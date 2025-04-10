{ pkgs, ... }: {

  home.packages = with pkgs; [
    kotlin
    jdk
    gradle_8
  ];

}
