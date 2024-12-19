{ pkgs, ... }: {
  home.packages = with pkgs; [ libnotify ];

  services.dunst = {
    enable = true;

    settings = {
      global = {
        browser = "firefox -new-tab";
      };
    };

  };
}
