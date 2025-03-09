{ config, ... }: {

  config.var.theme = {
    rounding = 15;
    gaps-in = 10;
    gaps-out = 10 * 2;
    active-opacity = 1;
    inactive-opacity = 0.89;
    blur = true;
    border-size = 1;
    border-color = "rgb(808080)";
    animation-speed = "medium"; # "fast" | "medium" | "slow"
    fetch = "nerdfetch"; # "nerdfetch" | "neofetch" | "pfetch" | "none"

    bar = {
      position = "top"; # "top" | "bottom"
      transparent = true;
      transparentButtons = false;
      floating = true;
    };
  };
}

