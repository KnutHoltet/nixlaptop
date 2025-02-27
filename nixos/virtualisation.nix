{ config, ... }:
let
  username = config.var.username;
in
{
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = ["${username}"];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;
}
