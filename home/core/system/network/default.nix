{ pkgs, ... }: {
  home.packages = with pkgs; [
    mullvad-vpn
  ];
}
