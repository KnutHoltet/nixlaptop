{ pkgs, config, ... }: {
  home.packages = with pkgs; [
    slides
    gimp
  ];
}
