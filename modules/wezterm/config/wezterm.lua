local wezterm = require("wezterm")

return {
  font = wezterm.font("Cascadia Code NF"),
  font_size = 17,
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
