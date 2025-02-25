{ pkgs, ... }: {

  home.packages = with pkgs; [
    kotlin
    jdk8
    gradle_7
  ];

}
