# TODO: Set a background for lockscreen
{ config, lib, ... }: {
  programs.hyprlock = {
    enable = true;
    
    settings = {
      general = {
        immediate_render = true;
      };
    }; # settings
    
    background = {
      monitor = "";

      # $HOME/Something/something.png
      # path = "$HOME/Downloads/black-and-white.png"; # TODO: only png supported for now
      path = "";
 

    }; # background
 
  }; # programs.hyprlock
}
