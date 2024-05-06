local wezterm = require("wezterm")
local format = wezterm.format
local nerdfonts = wezterm.nerdfonts

local SOLID_RIGHT_ARROW = nerdfonts.pl_left_hard_divider
local get_appearance = function()
  if wezterm.gui then
    return wezterm.gui.get_appearance()
  end
  return "Dark"
end

local function os_name()
  local binary_format = package.cpath:match("%p[\\|/]?%p(%a+)")
  if binary_format == "dll" then
    return "Windows"
  elseif binary_format == "so" then
    return "Linux"
  elseif binary_format == "dylib" then
    return "MacOS"
  else
    return "Unknown"
  end
end

local scheme_for_appearance = function(appearance)
  if appearance:find("Dark") then
    return "Catppuccin Mocha"
  else
    return "Catppuccin Latte"
  end
end

local font_size = function()
  if os_name() == "MacOS" then
    return 16
  else
    return 16
  end
end

return {
  font = wezterm.font("JetBrainsMono Nerd Font"),
  font_size = font_size(),
  color_scheme = scheme_for_appearance(get_appearance()),
  tab_bar_at_bottom = true,
  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,
  tab_and_split_indices_are_zero_based = true,
  tab_bar_style = {
    new_tab = format({ Text = SOLID_RIGHT_ARROW }),
  },
  enable_wayland = true,
}
