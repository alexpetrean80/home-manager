{...}: let
  getOpts = import ../utils/getKeymapOpts.nix;
in {
  programs.nixvim.plugins.lspsaga = {
    enable = true;
    diagnostic.diagnosticOnlyCurrent = true;
    implement = {
      enable = true;
      sign = true;
      virtualText = true;
    };
  };

  programs.nixvim.keymaps = [
    {
      action = "<cmd>Lspsaga diagnostic_jump_next<CR>";
      key = "<leader>dn";
      options = getOpts "Next diagnostic";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga diagnostic_jump_prev<CR>";
      key = "<leader>dp";
      options = getOpts "Previous diagnostic";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga show_workspace_diagnostics<CR>";
      key = "<leader>dd";
      options = getOpts "Show workspace diagnostics";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga hover_doc<CR>";
      key = "<leader>lh";
      options = getOpts "Hover";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga outline<CR>";
      key = "<leader>lo";
      options = getOpts "Outline";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga rename<CR>";
      key = "<leader>r";
      options = getOpts "Rename";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga incoming_calls<CR>";
      key = "<leader>ci";
      options = getOpts "Show incoming calls";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga outgoing_calls<CR>";
      key = "<leader>co";
      options = getOpts "Show outgoing calls";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga code_action<CR>";
      key = "<leader>a";
      options = getOpts "Code action";
      mode = "n";
    }

    {
      action = "<cmd>Lspsaga peek_definition<CR>";
      key = "<leader>pd";
      options = getOpts "Peek definition";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga peek_type_definition<CR>";
      key = "<leader>pt";
      options = getOpts "Peek type definition";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga finder def<CR>";
      key = "gd";
      options = getOpts "Find definitions";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga finder ref<CR>";
      key = "gr";
      options = getOpts "Find references";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga finder imp<CR>";
      key = "gi";
      options = getOpts "Find implementations";
      mode = "n";
    }
  ];
}
