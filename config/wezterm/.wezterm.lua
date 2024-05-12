-- Pull in the wezterm API
local wezterm = require 'wezterm'
-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- gruvbox theme - with bright colours for normal
config.colors = {
  foreground = '#ebdbb2',
  background = '#282828',
  cursor_bg = '#ebdbb2',
  cursor_fg = '#282828',
  cursor_border = '#ebdbb2',
  ansi = {
    "#928374",
    "#fb4934",
    "#b8bb26",
    "#fabd2f",
    "#83a598",
    "#d3869b",
    "#8ec07c",
    "#ebdbb2",
  },
  brights = {
    "#282828",
    "#cc241d",
    "#98971a",
    "#d79921",
    "#458588",
    "#b16286",
    "#689d6a",
    "#a89984",
  },
}
config.font = wezterm.font("Inconsolata", { bold = false, italic = false })
config.font_size = 16
config.line_height = 1.5
config.default_cursor_style = "SteadyBar"

-- and finally, return the configuration to wezterm
return config