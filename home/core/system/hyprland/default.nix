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
    xwayland.enable = true;
    systemd.enable = true;

    settings = {
      "$mod" = "SUPER";
      "$shiftMod" = "SUPER_SHIFT";

      input = {
        kb_layout = keyboardLayout;
      };
      
      exec-once = [
        "waybar"
      ];
      


     
    };

   
  };
}
