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
    stow
    zoxide
    tldr
    lazydocker
    lazygit
    fzf
    eza
    uv
    neovim
    opencode
  ];
  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
    
  };
  programs.zoxide.options = [
    "--cmd cd"
  ];

  programs.bash = {
    enable = true;
    shellAliases = {
      ls = "eza -l --icons --group-directories-first -a --git";
      hm = "nix run home-manager switch -- --flake /home/johnny/dotfiles/nix#johnny";
    };
    bashrcExtra = ''
        export PS1="\[$(tput setaf 33)\]\u\[$(tput setaf 69)\]@\[$(tput setaf 105)\]\h \[$(tput setaf 141)\]\w \[$(tput sgr0)\]$ "
        '' ;
  };
  # Environment vars only (safe with Stow)
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
