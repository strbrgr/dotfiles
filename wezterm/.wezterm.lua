local wezterm = require("wezterm")

local config = wezterm.config_builder()
config.color_scheme = "Gruvbox dark, pale (base16)"
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Bold" })
config.font_size = 16
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.8
config.macos_window_background_blur = 20

return config
