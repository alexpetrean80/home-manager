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
    python312Packages.setuptools
    python311Packages.setuptools
    rustup
    nodejs_20
    python3
    go
    delve
    fnm
    gnupg
    poetry
    tmux-sessionizer
  ];
}
