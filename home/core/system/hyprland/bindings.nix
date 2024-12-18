{ pkgs, config, inputs, ... }:

  # "$mod, Q, exec, ${pkgs.kitty}/bin/kitty" # Kitty
  # "$mod, B, exec, ${pkgs.firefox}/bin/firefox" # Firefox
  # "$mod, U, exec, wezterm/bin/wezterm" # Wezterm

{
  imports = [  ];
  
  wayland.windowManager.hyprland.settings = {
    bind = [
      
      "$mod, RETURN, exec, ${pkgs.kitty}/bin/kitty" # Kitty
      "$mod, B, exec, ${pkgs.firefox}/bin/firefox" # Firefox
      "$mod, SPACE, exec, menu" # Launcher

      "$mod, Q, killactive," # Close Window
      "$mod, T, togglefloating," # Toggle Floating
      "$mod, F, fullscreen" # Toggle Fullscreen

      "$mod, h, movefocus, l" # Move Focus Left
      "$mod, l, movefocus, r" # Move Focus Right
      "$mod, j, movefocus, d" # Move Focus Down 
      "$mod, k, movefocus, u" # Move Focus Down 


    ]; 
    
  };


}
