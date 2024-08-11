{...}: let
  getOpts = import ./utils/getKeymapOpts.nix;
in {
  programs.nixvim.keymaps = [
    # move around splits
    {
      action = "<cmd>TmuxNavigateLeft<CR>";
      key = "<C-h>";
      options = {silent = true;};
      mode = "n";
    }
    {
      action = "<cmd>TmuxNavigateDown<CR>";
      key = "<C-j>";
      options = {silent = true;};
      mode = "n";
    }
    {
      action = "<cmd>TmuxNavigateUp<CR>";
      key = "<C-k>";
      options = {silent = true;};
      mode = "n";
    }
    {
      action = "<cmd>TmuxNavigateRight<CR>";
      key = "<C-l>";
      options = {silent = true;};
      mode = "n";
    }
    # stay in indent mode
    {
      action = "<gv";
      key = "<";
      options = {silent = true;};
      mode = "v";
    }
    {
      action = ">gv";
      key = ">";
      options = {silent = true;};
      mode = "v";
    }
    # splits
    {
      action = "<cmd>vsp<CR>";
      key = "<leader>\\";
      options = getOpts "Vertical split";
      mode = "n";
    }
    {
      action = "<cmd>sp<CR>";
      key = "<leader>-";
      options = getOpts "Horizontal split";
      mode = "n";
    }
    # buffers
    {
      action = "<cmd>bnext<CR>";
      key = "<leader>bn";
      options = getOpts "Next";
      mode = "n";
    }
    {
      action = "<cmd>bprevious<CR>";
      key = "<leader>bp";
      options = getOpts "Previous";
      mode = "n";
    }
    {
      action = "<cmd>bd<CR>";
      key = "<leader>bd";
      options = getOpts "Delete";
      mode = "n";
    }
    {
      action = "<cmd>lua vim.lsp.buf.format({async=true})<CR>";
      key = "<leader>f";
      options = getOpts "Format";
      mode = "n";
    }
    {
      action = ":TestNearest<CR>";
      key = "<leader>tn";
      options = getOpts "Test nearest";
      mode = "n";
    }
    {
      action = ":TestFile<CR>";
      key = "<leader>tf";
      options = getOpts "Test file";
      mode = "n";
    }
    {
      action = ":TestSuite<CR>";
      key = "<leader>ts";
      options = getOpts "Test suite";
      mode = "n";
    }
    {
      action = ":VimuxOpenRunner<CR>:VimuxTogglePane<CR>";
      key = "<leader>v";
      options = getOpts "Vimux";
      mode = "n";
    }
  ];
}
