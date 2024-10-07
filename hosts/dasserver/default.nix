{...}: {
  imports = [
    ../../modules
    ../../modules/git
    ../../modules/neovim
    ../../modules/tmux
    ../../modules/wezterm
    ../../modules/starship
    ../../modules/zsh
    ../../modules/packages.nix
  ];

  home = {
    username = "alexp";
    homeDirectory = "/home/alexp";
    stateVersion = "24.05";
  };
}
