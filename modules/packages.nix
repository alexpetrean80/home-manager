{ pkgs, ... }: {
  home.packages = with pkgs; [
    fzf
    ripgrep
    fd
    eza
    httpie
    glow
    bat
    cmake
    gnumake
    neofetch
    neovim
    gcc
    rustup
    nodejs_20
    go
    fnm
    gnupg
    poetry
    tmux-sessionizer
  ];
}
