{
  pkgs,
  lib,
  ...
}: {
  programs.nixvim.extraPlugins = with pkgs.vimPlugins; [
    lualine-nvim
    vim-tmux-navigator
    vim-test
    vimux
  ];
  programs.nixvim.extraConfigLua = ''
        ${lib.readFile ./config/lualine.lua}

        vim.cmd("let test#strategy = 'vimux'")
  '';
}
