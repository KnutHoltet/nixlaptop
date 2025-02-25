{ pkgs, lib, config, ... }: {

  options = {
    python.enable =
      lib.mkEnableOption "Enables python ;(";
  };

  config = lib.mkIf config.python.enable {
    environment.systemPackages = with pkgs; [
      (python311.withPackages (ps: with ps; [
        dbus-python
      ]))
    ];
  };
}
