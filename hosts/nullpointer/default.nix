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
 
  # TODO: Maby modularize custom options
  gotham.enable = true;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  home-manager.users."${config.var.username}" = import ./home.nix;

  system.stateVersion = "24.11"; # Did you read the comment?
}
