{ pkgs, config, inputs, ... }:

  # "$mod, Q, exec, ${pkgs.kitty}/bin/kitty" # Kitty
  # "$mod, B, exec, ${pkgs.firefox}/bin/firefox" # Firefox
  # "$mod, U, exec, wezterm/bin/wezterm" # Wezterm

{
  imports = [ ./submap.nix ];
  
  wayland.windowManager.hyprland.settings = {
    bind = [
      
      "$mod, Q, exec, ${pkgs.kitty}/bin/kitty" # Kitty
      "$mod, B, exec, ${pkgs.firefox}/bin/firefox" # Firefox

    ]; 
    
  };


}
