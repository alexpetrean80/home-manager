{inputs, ...}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim

    ./options.nix
    ./extraplugins.nix
    ./keymaps.nix

    ./plugins
  ];

  programs.nixvim = {
    enable = false;
    enableMan = true;
    withNodeJs = true;
    performance = {
      byteCompileLua.enable = true;
    };
    colorschemes.catppuccin = {
      enable = true;
      settings.flavour = "mocha";
    };
    globals = {
      mapleader = " ";
    };
  };
}
