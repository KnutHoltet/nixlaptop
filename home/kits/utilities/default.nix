{ pkgs, ... }: {
  imports = [
    ./fun
    ./clipboards
    ./search-tools
  ];


  home.packages = with pkgs; [
    brightnessctl

    zip
    unzip

    qt5.qtwayland
    qt6.qtwayland
    libsForQt5.qt5ct
    qt6ct

    gnome-themes-extra

    wayland-utils
    wayland-protocols

    direnv
    glib

    meson

  ];
}
