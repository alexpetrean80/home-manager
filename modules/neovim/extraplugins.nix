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

    --   vim.keymap.set('n', 'C-h', ':TmuxNavigateLeft<CR>')
    --   vim.keymap.set('n', 'C-j', ':TmuxNavigateDown<CR>')
    --   vim.keymap.set('n', 'C-k', ':TmuxNavigateUp<CR>')
    --   vim.keymap.set('n', 'C-l', ':TmuxNavigateRight<CR>')
  '';
}
