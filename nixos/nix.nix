{ config, inputs, ... }:

let
  autoGC = config.var.autoGrabageCollector;
in

{
  nixpkgs.config = {
    allowUnfree = true;
    allowBroken = true;
  };



  nix = {
    nixPath = [ "nixpkgs=${inputs.nixpkgs}" ];
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
    };
    
    gc = {
      automatic = autoGC;
      persistent = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };

    
  };

}

