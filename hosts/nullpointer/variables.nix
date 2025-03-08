{ config, ... }: {

  imports = [
    ./../../nixos/variables-config.nix
  ];

  config.var = {
    hostname = "nixos";
    username = "knuth";

    configDirectory = "/home/" + config.var.username
      + "/.config/nixos"; 

    keyboardLayout = "no";
    

    location = "Oslo";
    timeZone = "Europe/Oslo";
    defaultLocale = "en_US.UTF-8";

    git = {
      username = "KnutHoltet";
      email = "knutholtet@live.no";
    };

    autoUpgrade = false;
    autoGrabageCollector = false;

    sudoTimeStamp = 15;
    
  };


}
