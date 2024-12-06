{pkgs, ...}: {
  imports = [
    ./git
    ./starship
    ./tmux
    ./zsh
  ];

  home.packages = with pkgs; [
    fzf
    gnupg
    ripgrep
    fd
    eza
    glow
    bat
    neovim
    neofetch
    nixd
    httpie
    cmake
    gnumake
    gcc
    rustup
    nodejs_20
    python3
    python312Packages.pip
    go
    fnm
    nil
    postgresql
    tmux-sessionizer
    elixir
    zellij
  ];
}
