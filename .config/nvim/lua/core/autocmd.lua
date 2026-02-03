-- restore terminal cursor upon exit
vim.api.nvim_create_autocmd({"VimLeave", "VimSuspend"},{
    command = "set guicursor=a:hor20-blinkon300-blinkoff300",
})

-- disable automatic comment on newline
vim.api.nvim_create_autocmd("FileType", {
		pattern = "*",
		callback = function()
		vim.opt_local.formatoptions:remove({ "c", "r", "o" })
		end,
})

-- start treesitter
vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"c", "h", "sh", "lua", "py", "js", "ts",
		"html", "css", "json", "jsonc", "markdown", "tex"
	},
	callback = function()
		vim.treesitter.start()
	end,
})
