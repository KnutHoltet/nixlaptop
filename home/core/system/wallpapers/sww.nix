{ pkgs, ... }: {

  # environment.systemPackages = with pkgs; [
  #   sww
  # ];

  home.packages = with pkgs; [
    swww
  ];

}
