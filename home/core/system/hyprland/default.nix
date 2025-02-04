{ pkgs, lib, config, ... }:
let
  keyboardLayout = config.var.keyboardLayout;
in
{

  

  imports = [
    ./bindings.nix
   
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland = {
      enable = true;
    };
 
    systemd.enable = true;

    settings = {
      xwayland = {
        force_zero_scaling = true;
      };

      monitor = [
        "eDP-1, preferred, auto, 1"
        "HDMI-A-1, preferred, auto, 1, mirror, eDP-1"
      ];
 
      
      "$mod" = "SUPER";
      "$shiftMod" = "SUPER_SHIFT";

      input = {
        kb_layout = keyboardLayout;
        

      };
      
      exec-once = [
        # "waybar"
        "swww-init"
      ];

      


     
    };

   
  };
}
