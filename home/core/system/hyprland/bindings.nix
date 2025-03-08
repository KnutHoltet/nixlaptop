{ pkgs, config, inputs, ... }:

  # "$mod, Q, exec, ${pkgs.kitty}/bin/kitty" # Kitty
  # "$mod, B, exec, ${pkgs.firefox}/bin/firefox" # Firefox
  # "$mod, U, exec, wezterm/bin/wezterm" # Wezterm

{
  imports = [ ./submap.nix ];
  
  wayland.windowManager.hyprland.settings = {
    bind = [
      
      # "$mod, U, exec, ${pkgs.kitty}/bin/kitty" # Kitty
      "$mod, U, exec, ${pkgs.ghostty}/bin/ghostty" # Ghostty
      "$mod, B, exec, ${pkgs.brave}/bin/brave" # Firefox
      "$mod, SPACE, exec, rofi -show drun" # Launcher

      "$mod, Q, killactive," # Close Window
      "$mod, T, togglefloating," # Toggle Floating
      "$mod, F, fullscreen" # Toggle Fullscreen

      "$mod, h, movefocus, l" # Move Focus Left
      "$mod, l, movefocus, r" # Move Focus Right
      "$mod, j, movefocus, d" # Move Focus Down 
      "$mod, k, movefocus, u" # Move Focus Down 

      "$shiftMod, l, exec, hyprlock"




      # "$shiftMod, S, exec, ${pkgs.firefox}/bin/firefox https://www.google.com/search?q=$(wofi --show dmenu -L 1 -p 'Search on internet' | sed 's/ /+/g')"

    ]++ (builtins.concatLists (builtins.genList (i:
      let ws = i + 1;
      in [
        "$mod,code:1${toString i}, workspace, ${toString ws}"
        "$mod SHIFT,code:1${toString i}, movetoworkspace, ${toString ws}"
      ]) 9));
    
    bindm = [
      "$mod, mouse:272, movewindow"
      "$mod, R, resizewindow"
 
    ];

  };


}
