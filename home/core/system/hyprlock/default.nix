# TODO: This stuff has colors
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


      input-field = lib.mkForce {
        monitor = "";
        size = "300, 30";
        outline_thickness = 0;
        dots_size = 0.0;
        dots_spacing = 0.55;
        dots_center = true;
        dots_rounding = -1;
        outer_color = "rgba(242, 243, 244, 0)";
        inner_color = "rgba(242, 243, 244, 0)";
        font_color = "rgba(242, 243, 244, 0.75)";
        fade_on_empty = false;
        placeholder_text = "";
        hide_input = false;
        check_color = "rgba(204, 136, 34, 0)";
        fail_color = "rgba(204, 34, 34, 0)";
        fail_text = "$FAIL <b>($ATTEMPTS)</b>";
        fail_transition = 300;
        capslock_color = -1;
        numlock_color = -1;
        bothlock_color = -1;
        invert_numlock = false;
        swap_font_color = false;
        position = "0, -468";
        halign = "center";
        valign = "center";
      }; # input-field


      label = [
        # TODO: lockscreen shows music
        {
          monitor = "";        
          
        } # Shows active playing music

        {
          monitor = "";
          text = ''cmd[update:1000] echo "$(date + "%A, %B %d")"'';
          color = "rgba(242, 243, 244, 0.75)";
          font_size = 30;
          font_family = "SF Pro Display Bold";
          position = "0, 405";
          halign = "center";
          valign = "center";
        } # date label


        {
          monitor = "";
          text = ''cmd[update:1000] echo "$(date + "%k:%M")"'';
          color = "rgba(242, 243, 244, 0.75)";
          font_size = 93;
          font_family = "SF Pro Display Bold";
          position = "0, 310";
          halign = "center";
          valign = "center";
        }

        {
          monitor = "";
          text = "Pratik Gayen";
          color = "rgba(242, 243, 244, 0.75)";
          font_size = 12;
          font_family = "SF Pro Display Bold";
          position = "0, -407";
          halign = "center";
          valign = "center";
        }


      ]; # label

    }; # settings
    
 
  }; # programs.hyprlock
}
