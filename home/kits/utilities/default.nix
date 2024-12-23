{ pkgs, ... }: {
  imports = [
    ./fun
    ./clipboards
    ./search-tools
  ];


  home.packages = with pkgs; [
    zip
    unzip
  ];
}
