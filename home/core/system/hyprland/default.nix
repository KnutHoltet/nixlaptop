{ pkgs, lib, config, ... }:
let
  keyboardLayout = config.var.keyboardLayout;

  border-size = config.var.theme.border-size;
  border-color = config.var.theme.border-color;
  


  gaps-in = config.var.theme.gaps-in;
  gaps-out = config.var.theme.gaps-out;
  active-opacity = config.var.theme.active-opacity;
  inactive-opacity = config.var.theme.inactive-opacity;
  rounding = config.var.theme.rounding;
  blur = config.var.theme.blur;
in
{

  systemd.user.targets.hyprland-session.Unit.Wants =
    [ "xdg-desktop-autostart.target" ];

  imports = [
    ./bindings.nix
    ./animations/animations.nix
   
  ];

  home.packages = with pkgs; [
    hyprcursor
    # catppuccin-cursors.macchiatoTeal
  ];

  home.pointerCursor = {
    name = "catppuccin-macchiato-teal-cursors";
    package = pkgs.catppuccin-cursors.macchiatoTeal;
    size = 24;

    hyprcursor.enable = true;

  };


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

      cursor = {
        enable_hyprcursor = true;
      };

      # env = [
      #   "HYPRCURSOR_THEME, Catppuccin-Macchiato-Teal"
      #   "HYPRCURSOR_SIZE, 24"
      # ];

      monitor = [
        "eDP-1, preferred, auto, 1"
        "HDMI-A-1, preferred, auto, 1, mirror, eDP-1"
      ];
 
      
      "$mod" = "SUPER";
      "$shiftMod" = "SUPER_SHIFT";

      input = {
        kb_layout = keyboardLayout;
        follow_mouse = 1;
        sensitivity = 0.5;
        repeat_delay = 300;
        repeat_rate = 50;
        numlock_by_default = true;

        touchpad = {
          natural_scroll = true;
          clickfinger_behavior = true;
        };
      };
      
      exec-once = [
        # "waybar"
        "swww-init"
      ];

      general = {
        resize_on_border = true;
        gaps_in = gaps-in;
        gaps_out = gaps-out;
        border_size = border-size;
        # border_part_of_window = true;
        "col.active_border" = border-color;
        layout = "master";
      };

      decoration = {
        active_opacity = active-opacity;
        inactive_opacity = inactive-opacity;
        rounding = rounding;
        shadow = {
          enabled = true;
          range = 20;
          render_power = 3;
        };
        blur = { enabled = if blur then "true" else "false"; };
      };

      master = {
        new_status = true;
        allow_small_split = true;
        mfact = 0.5;
      };

      gestures = {
        workspace_swipe = true;
      };

      misc = {
        vfr = true;
        disable_hyprland_logo = true;
        disable_splash_rendering = true;
        disable_autoreload = true;
        focus_on_activate = true;
        new_window_takes_over_fullscreen = 2;
      };

      windowrulev2 =
        [ "float, tag:modal" "pin, tag:modal" "center, tag:modal" ];
      
      layerrule = [ "noanim, launcher" "noanim, ^ags-.*" ];
     
    };
  };
}
