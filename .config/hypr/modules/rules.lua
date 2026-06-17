-- Workspaces
hl.workspace_rule({
	workspace = "1",
	monitor = "DP-1",
	persistent = true,
	default = true,
})
hl.workspace_rule({
	workspace = "2",
	monitor = "DP-1",
	persistent = true,
})
hl.workspace_rule({
	workspace = "3",
	monitor = "DP-1",
	persistent = true,
})
hl.workspace_rule({
	workspace = "4",
	monitor = "HDMI-A-1",
	persistent = true,
	default = true,
})
hl.workspace_rule({
	workspace = "5",
	monitor = "HDMI-A-1",
	persistent = true,
})
hl.workspace_rule({
	workspace = "6",
	monitor = "HDMI-A-1",
	persistent = true,
})
hl.workspace_rule({
	workspace = "7",
	monitor = "DP-2",
	persistent = true,
	default = true,
})
hl.workspace_rule({
	workspace = "8",
	monitor = "DP-2",
	persistent = true,
})
hl.workspace_rule({
	workspace = "9",
	monitor = "DP-2",
	persistent = true,
})

-- Windows
hl.window_rule({
	name = "guitarpro",
	match = {
		class = "guitarpro.exe"
	},
	idle_inhibit = "focus",
	tile = true,
})

hl.window_rule({
	name = "ardour",
	match = {
		class = "Ardour"
	},
	idle_inhibit = "focus"
})
