{ pkgs, config, ... }:

let
  hostname = config.var.hostname;
  keyboardLayout = config.var.keyboardLayout;
in
{
  
  networking.hostName = hostname;
  
  services = {

    xserver = {
      enable = false;
      xkb.layout = keyboardLayout;
      xkb.variant = "";
    };
  };
  
  console.keyMap = keyboardLayout;

  environment.systemPackages = with pkgs; [
    obsidian
    fd
    bc
    git-ignore
    gcc
    xdg-utils
    vim
    wget
    curl
  ];


}
