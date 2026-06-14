{ config, pkgs, inputs, ... }:

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
    visidata
    btop
    yazi
    duckdb
    bat
    lazysql
    inputs.try-cli.packages.${system}.default
    rquickshare
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
      hm = "home-manager switch --flake ~/dotfiles/nix#johnny";
      y = "yazi";
      ae = "source .venv/bin/activate";
      de = "deactivate";
    };
    bashrcExtra = ''
        export PS1="\[$(tput setaf 33)\]\u\[$(tput setaf 69)\]@\[$(tput setaf 105)\]\h \[$(tput setaf 141)\]\w \[$(tput sgr0)\]$ "
        export NVM_DIR="$HOME/.nvm"
        [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
        [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
        eval "$(fzf --bash)"
        set -a
        source ~/.global.env
        set +a
        export PATH=$PATH:$HOME/go/bin
        eval "$(try init ~/src/tries)"
        export PATH=/home/johnny/.opencode/bin:$PATH
        '' ;
  };
  home.sessionPath = [
      "$HOME/.local/bin"
    ];
  # Environment vars only (safe with Stow)
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
