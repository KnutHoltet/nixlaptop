{ pkgs, ... }: {

  home.packages = with pkgs; [
    #   (python311.withPackages (ps: with ps; [
    #   dbus-python
    # ]))
    python311
  ];

}
