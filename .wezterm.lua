local wezterm = require("wezterm")

return {
	font = wezterm.font("JetBrainsMono Nerd Font"),
	font_size = 15,
	warn_about_missing_glyphs = false,
	enable_tab_bar = false,
	color_scheme = "gruvbox_material_dark_hard",
	color_schemes = {
		["gruvbox_material_dark_hard"] = {
			foreground = "#D4BE98",
			background = "#282828",
			cursor_bg = "#D4BE98",
			cursor_border = "#D4BE98",
			cursor_fg = "#1D2021",
			selection_bg = "#D4BE98",
			selection_fg = "#3C3836",

			ansi = { "#1d2021", "#ea6962", "#a9b665", "#d8a657", "#7daea3", "#d3869b", "#89b482", "#d4be98" },
			brights = { "#eddeb5", "#ea6962", "#a9b665", "#d8a657", "#7daea3", "#d3869b", "#89b482", "#d4be98" },
		},
		["gruvbox_material_dark_medium"] = {},
		["gruvbox_material_dark_soft"] = {},
		["gruvbox_material_light_hard"] = {
			foreground = "#654735",
			background = "#F9F5D7",
			cursor_bg = "#654735",
			cursor_border = "#654735",
			cursor_fg = "#F9F5D7",
			selection_bg = "#F3EAC7",
			selection_fg = "#4F3829",

			ansi = { "#1d2021", "#ea6962", "#a9b665", "#d8a657", "#7daea3", "#d3869b", "#89b482", "#d4be98" },
			brights = { "#eddeb5", "#ea6962", "#a9b665", "#d8a657", "#7daea3", "#d3869b", "#89b482", "#d4be98" },
		},
		["gruvbox_material_light_medium"] = {},
		["gruvbox_material_light_soft"] = {},
	},
}
