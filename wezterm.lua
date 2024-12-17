local wezterm = require("wezterm")
local config = wezterm.config_builder()

config = {
	window_decorations = "RESIZE",
	font = wezterm.font("Hurmit Nerd Font Mono"),
	font_size = 19,
	enable_tab_bar = false,
	window_background_opacity = 0.9,
	macos_window_background_blur = 10,
}

return config
