{ config, pkgs, ... }:
let
  username = config.var.username;
in

{
  programs.zsh.enable = true;
  users = {
    defaultUserShell = pkgs.zsh;
    users.${username} = {
      isNormalUser = true;
      description = "${username} acc";
      extraGroups = [ "networkmanager" "wheel" ];
      packages = with pkgs; []; # mby add stuff here in the future
    };
  };
}
