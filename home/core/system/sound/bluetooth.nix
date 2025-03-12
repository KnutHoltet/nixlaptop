{ pkgs, ... }: {
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = false;

  home.packages = with pkgs; [ overskride ];
}
