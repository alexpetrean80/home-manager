{...}: let
  getOpts = import ../utils/getKeymapOpts.nix;
in {
  programs.nixvim.plugins.dap = {
    enable = true;
    extensions = {
      dap-go.enable = true;
      dap-ui = {
        enable = true;
        expandLines = true;
        forceBuffers = true;
        controls = {
          enabled = true;
        };
      };
      dap-virtual-text = {
        enable = true;
        allFrames = true;
      };
    };
  };

  programs.nixvim.keymaps = [
    {
      action = "<cmd>DapContinue<CR>";
      key = "<leader>Dc";
      options = getOpts "Start/Continue debugging";
    }
    {
      action = "<cmd>DapToggleBreakpoint<CR>";
      key = "<leader>Db";
      options = getOpts "Toggle breakpoint";
    }
    {
      action = "<cmd>DapStepOver<CR>";
      key = "<leader>Do";
      options = getOpts "Step over";
    }
    {
      action = "<cmd>DapStepInto<CR>";
      key = "<leader>Di";
      options = getOpts "Step into";
    }
    {
      action = "<cmd>DapStepOut<CR>";
      key = "<leader>DO";
      options = getOpts "Step out";
    }
    {
      action = "<cmd>DapToggleRepl<CR>";
      key = "<leader>Dr";
      options = getOpts "Toggle REPL";
    }
  ];
}
