{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./../../modules
      ./../../nixos
      ./variables.nix
    ];

  # TODO: Look into this - change to grub????
  # boot.loader.grub.enable = true;
  # boot.loader.grub.device = "/dev/sda";
  # boot.loader.grub.useOSProber = true;

  nvf.enable = true;
  python.enable = true;
 

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  home-manager.users."${config.var.username}" = import ./home.nix;

  system.stateVersion = "24.11"; # Did you read the comment?
}
