local wezterm = require 'wezterm'

-- Set PowerShell as the default shell
local default_prog = { "pwsh.exe" }

-- Solarized Light color scheme
local solarized_light = {
  foreground = "#586e75",
  background = "#fdf6e3",

  cursor_fg = "#002b36",
  cursor_bg = "#657b83",
  cursor_border = "#657b83",

  selection_fg = "#586e75",
  selection_bg = "#eee8d5",

  ansi = {
    "#073642", -- black
    "#dc322f", -- red
    "#859900", -- green
    "#b58900", -- yellow
    "#87CFFF", -- blue
    "#d33682", -- magenta
    "#2aa198", -- cyan
    "#9e9885", -- white
  },

  brights = {
    "#002b36", -- bright black
    "#cb4b16", -- bright red
    "#586e75", -- bright green
    "#657b83", -- bright yellow
    "#839496", -- bright blue
    "#6c71c4", -- bright magenta
    "#93a1a1", -- bright cyan
    "#fdf6e3", -- bright white
  },
}

return {
  default_prog = default_prog,
  color_schemes = {
    ["Solarized Light"] = solarized_light,
  },
  color_scheme = "Solarized Light",
  
  -- Additional settings
  font = wezterm.font("Cascadia Mono"),
  font_size = 10.0,
  enable_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,

  keys = {
    { key = "UpArrow", mods = "CTRL|SHIFT", action = wezterm.action.ScrollByLine(-3) },
    { key = "DownArrow", mods = "CTRL|SHIFT", action = wezterm.action.ScrollByLine(3) },
  },
}
