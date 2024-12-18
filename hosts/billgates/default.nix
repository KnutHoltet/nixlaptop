{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./../../modules
      ./../../nixos
      ./variables.nix
    ];

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

  home-manager.users."${config.var.username}" = import ./home.nix;

  system.stateVersion = "24.05"; # Did you read the comment?
}
