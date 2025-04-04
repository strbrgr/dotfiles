local wezterm = require("wezterm")

return {
	font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Bold" }),
	font_size = 16,
	warn_about_missing_glyphs = false,
	-- enable_tab_bar = false,
	color_scheme = "Gruvbox dark, pale (base16)",
	window_decorations = "RESIZE",
}
