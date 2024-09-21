{...}: let
  getOpts = import ../utils/getKeymapOpts.nix;
in {
  programs.nixvim.plugins.refactoring = {
    enable = true;
    prompt_func_param_type = {
      go = true;
      java = true;
      cpp = true;
      c = true;
      h = true;
      hpp = true;
      cxx = true;
    };
    prompt_func_return_type = {
      go = true;
      java = true;
      cpp = true;
      c = true;
      h = true;
      hpp = true;
      cxx = true;
    };
  };

  programs.nixvim.keymaps = [
    {
      action = "<cmd>lua require('refactoring').select_refactor()<CR>";
      key = "<leader>R";
      options = getOpts "Refactoring";
      mode = ["n" "v"];
    }
  ];
}
