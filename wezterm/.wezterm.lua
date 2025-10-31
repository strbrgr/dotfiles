local wezterm = require("wezterm")
local config = wezterm.config_builder()
local act = wezterm.action

config.color_scheme = "Gruvbox dark, pale (base16)"
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Medium" })
config.font_size = 16

-- fullscreen mode on 13" MBP
config.initial_rows = 100
config.initial_cols = 205

config.window_close_confirmation = "NeverPrompt"

-- configures whether the window has a title bar and/or resizable border
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.8
config.macos_window_background_blur = 20
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true

-- adds effect to the inactive pane
config.inactive_pane_hsb = {
	saturation = 0.25,
	brightness = 0.5,
}

-- leader key
config.leader = { key = "b", mods = "CTRL", timeout_milliseconds = 2000 }

config.keys = {
	-- create a new Tab
	{ key = "c", mods = "LEADER", action = act.SpawnTab("CurrentPaneDomain") },
	-- close tab
	{ key = "x", mods = "LEADER", action = wezterm.action.CloseCurrentTab({ confirm = true }) },

	-- navigate Tabs
	{ key = "p", mods = "LEADER", action = act.ActivateTabRelative(-1) },
	{ key = "n", mods = "LEADER", action = act.ActivateTabRelative(1) },

	-- rename Tab
	{
		key = ",",
		mods = "LEADER",
		action = act.PromptInputLine({
			description = wezterm.format({
				{ Attribute = { Intensity = "Bold" } },
				{ Foreground = { AnsiColor = "Fuchsia" } },
				{ Text = "Renaming Tab Title...:" },
			}),
			action = wezterm.action_callback(function(window, _, line)
				if line then
					window:active_tab():set_title(line)
				end
			end),
		}),
	},
}

-- switch to tabs with index
for i = 1, 9 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "LEADER",
		action = act.ActivateTab(i - 1),
	})
end

return config
