{pkgs, ...}: {
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
    gcc
    rustup
    nodejs_20
    go
    delve
    fnm
    gnupg
    poetry
    tmux-sessionizer
  ];
}
