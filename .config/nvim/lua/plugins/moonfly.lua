vim.g.moonflyNormalFloat = true
vim.o.winborder = "single"
vim.g.moonflyTerminalColors = false
vim.g.moonflyTransparent = true

require("moonfly").custom_colors({
	cinnamon = "#d45a92",
	orchid = "#fa8ec1",
	orange = "#d9b100",
	yellow = "#ffd000",
	khaki = "#fff2b1",
	sky = "#7452f0",
	blue = "#4a26c9",
	lavender = "#bea7ff",
	violet = "#bf5287",
	purple = "#9a2b60"
})

-- Change line number color
local custom_highlight = vim.api.nvim_create_augroup("CustomHighlight", {})
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "moonfly",
  callback = function()
    vim.api.nvim_set_hl(0, "CursorLineNR", { fg = "#fa8ec1" })
  end,
  group = custom_highlight,
})

vim.cmd [[colorscheme moonfly]]
