{
  description = "Johnny's Home Manager config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    try-cli.url = "github:tobi/try-cli"; 
  };

  outputs = { nixpkgs, home-manager, try-cli, ... }:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
  in {
    homeConfigurations.johnny = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      extraSpecialArgs = { inputs = {try-cli = try-cli; }; }; # pass flake inputs
      modules = [
        ./home.nix
      ];
    };
  };
}

