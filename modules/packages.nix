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
    python3
    python312Packages.pre-commit-hooks
    python312Packages.pip
    go
    fnm
    gnupg
    postgresql
    deno
    tmux-sessionizer
  ];
}
