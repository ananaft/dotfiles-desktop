local wk = require("which-key")
wk.add({
	{ "<leader>d", desc = "Toggle File Tree" },
	{ "<leader>?", desc = "Show Local Buffer Keymap" },
	{ "<leader>w", desc = "Write File" },
	{ "<leader>q", desc = "Close File" },
	{ "<leader>Q", desc = "Close File Without Saving" },
	{ "<leader>t", desc = "Toggle Terminal" },
	{ "<leader>ros", desc = "Search-Replace Single Buffer Open" },
	{ "<leader>rom", desc = "Search-Replace Multi Buffer Open" },
	{ "<leader>rss", desc = "Search-Replace Single Buffer Selection" },
	{ "<leader>rsm", desc = "Search-Replace Multi Buffer Selection" },
})
