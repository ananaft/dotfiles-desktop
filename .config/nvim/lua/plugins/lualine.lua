-- define custom colors
local custom_moonfly = require"lualine.themes.moonfly"
custom_moonfly.normal.a.bg = "#fa8ec1"
custom_moonfly.normal.b.fg = "#fa8ec1"
custom_moonfly.insert.a.bg = "#bea7ff"
custom_moonfly.insert.b.fg = "#bea7ff"
custom_moonfly.visual.a.bg = "#ffd000"
custom_moonfly.visual.b.fg = "#ffd000"
custom_moonfly.replace.a.bg = "#4a26c9"
custom_moonfly.replace.b.fg = "#4a26c9"
custom_moonfly.command.a.bg = "#9a2b60"
custom_moonfly.command.b.fg = "#9a2b60"

require("lualine").setup{
	options = { 
		theme = custom_moonfly,
		
	},
	sections = {
		lualine_a = {"mode"},
		lualine_b = {"branch", "diff"},
		lualine_c = {
			{"filename", path = 1},
		},
		lualine_x = {"encoding", "filetype"},
		lualine_y = {"searchcount", "progress"},
		lualine_z = {"selectioncount", "location"},
	},
}
