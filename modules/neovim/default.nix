{inputs, ...}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim

    ./options.nix
    ./extraplugins.nix
    ./keymaps.nix

    ./plugins
  ];

  programs.nixvim = {
    enable = true;
    enableMan = true;
    withNodeJs = true;
    colorschemes.catppuccin = {
      enable = true;
    };
    globals = {
      mapleader = " ";
    };
  };
}
