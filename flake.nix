{
  description = ''
    Thursday, October 31st. The city streets are crowded for the holiday.
  '';

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    hyprland.url = "github:hyprwm/Hyprland";
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };

    nvf.url = "github:notashelf/nvf";
    
    
  };

  outputs =
     { nixpkgs, ...  } @ inputs: 
   # let

   # in

  {
  
   # packages."x86_64-linux".default =
   #   (nvf.lib.neovimConfiguration {
   #     pkgs = nixpkgs.legacyPackages."x86_64-linux";
   #     modules = [ ./home/kits/pde/nvf.nix ];
   #   }).neovim;


   nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
    specialArgs =  { inherit inputs; };
    modules = [
     ./hosts/nullpointer/default.nix
     # ./home/kits/utilities/pde/nvf.nix

     inputs.home-manager.nixosModules.home-manager
     # inputs.nvf.homeManagerModules.default
     # inputs.nvf.nixosModules.default

    ];
   }; # nixosConfigurations

   # homeConfigurations = {
   #   
   # };


   

  };
}
