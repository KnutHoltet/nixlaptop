# TODO: Set a background for lockscreen
{ config, lib, ... }: {
  programs.hyprlock = {
    enable = true;
    
    settings = {
      general = {
        immediate_render = true;
      };

      background = {
        monitor = "";
        path = "$HOME/Downloads/black-and-white.png"; # TODO: only png supported for now
        # path = "";
        color = "rgba(25, 20, 20, 1.0)";

        blur_passes = 0;
        blur_size = 2;
        noise  = 0;
        contrast = 0;
        brightness = 0;
        vibrancy = 0;
        vibrancy_darkness = 0.0;
 

      }; # background
    }; # settings
    
 
  }; # programs.hyprlock
}
