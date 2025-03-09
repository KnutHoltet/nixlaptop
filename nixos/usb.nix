{ pkgs, ... }:

{
  services.gvfs.enable = true;

  services.usbguard = {
    enable = true;
    dbus.enable = true;
    implicitPolicyTarget = "block";
    rules = ''
      allow id {046d:c094} # mouse
    '';
  };

  environment.systemPackages = with pkgs; [
    usbutils
  ];
}

