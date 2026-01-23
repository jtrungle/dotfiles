{ config, pkgs, ... }:

{
  home.username = "johnny";
  home.homeDirectory = "/home/johnny";

  home.stateVersion = "24.05";

  # START SMALL
  home.packages = with pkgs; [
    ripgrep
    fd
    bat
  ];

  # Environment vars only (safe with Stow)
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
