{ pkgs, ... }: {
  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    wlr.enable = true;
    extraPortals = 
      [  pkgs.xdg-desktop-portal-gtk ];
  };

# pkgs.xdg-desktop-portal-hyprland ;-;
}
