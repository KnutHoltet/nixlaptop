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
        color = rgba(25, 20, 20, 1.0);
 

      }; # background
    }; # settings
    
 
  }; # programs.hyprlock
}
