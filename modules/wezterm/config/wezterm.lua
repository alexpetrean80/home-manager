local wezterm = require("wezterm")
local format = wezterm.format
local nerdfonts = wezterm.nerdfonts

return {
  font = wezterm.font("FiraCode Nerd Font"),
  font_size = 18,
  color_scheme = "Catppuccin Mocha",
  enable_tab_bar = false,
  enable_wayland = true,
  window_padding = {
    left = 3,
    right = 3,
    top = 1,
    bottom = 0,
  },
}
