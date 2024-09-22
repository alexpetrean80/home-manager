{...}: {
  imports = [
    ./dap.nix
    ./indent_blankline.nix
    ./lsp.nix
    ./lspsaga.nix
    ./mini.nix
    ./noice.nix
    ./none-ls.nix
    ./nvim-cmp.nix
    ./refactoring.nix
    ./telescope.nix
    ./treesitter.nix
    ./which-key.nix
  ];

  programs.nixvim.plugins = {
    gitblame.enable = true;
    gitsigns.enable = true;
    fugitive.enable = true;
    neogit.enable = true;
    comment.enable = true;
    helm.enable = true;
    notify.enable = true;
    sandwich.enable = true;
    rainbow-delimiters.enable = true;
    lsp-format.enable = true;
    transparent = {
      enable = true;
      settings = {
        groups = [
          "Normal"
          "NormalNC"
          "Comment"
          "Constant"
          "Special"
          "Identifier"
          "Statement"
          "PreProc"
          "Type"
          "Underlined"
          "Todo"
          "String"
          "Function"
          "Conditional"
          "Repeat"
          "Operator"
          "Structure"
          "LineNr"
          "NonText"
          "SignColumn"
          "CursorLine"
          "CursorLineNr"
          "StatusLine"
          "StatusLineNC"
          "EndOfBuffer"
        ];
        exclude_groups = [];
        extra_groups = [
          "BufferLineTabClose"
          "BufferLineBufferSelected"
          "BufferLineFill"
          "BufferLineBackground"
          "BufferLineSeparator"
          "BufferLineIndicatorSelected"
        ];
      };
    };
    typescript-tools.enable = true;
  };
}
