{ config, ... }: {
  wayland.windowManager.hyprland.settings = {
    animations = {
      enabled = false;
    };
  };
}
