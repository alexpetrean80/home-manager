{pkgs, ...}: {
  imports = [
    ../../modules
    ../../modules/git
    ../../modules/kitty
    # ../../modules/neovim
    ../../modules/tmux
    ../../modules/wezterm
    ../../modules/starship
    ../../modules/zsh
    ../../modules/packages.nix
  ];

  programs.kitty.extraConfig = ''
    font_size 14.0
    background_blur 1
    background_opacity 0.9
  '';


  home = {
    username = "alexp";
    homeDirectory = "/home/alexp";
    packages = with pkgs; [
zig
    ];
    stateVersion = "24.05";
  };
}
