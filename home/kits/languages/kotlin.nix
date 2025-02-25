{ pkgs, ... }: {

  home.packages = with pkgs; [
    kotlin
    jdk
    gradle_7
    python39
  ];

}
