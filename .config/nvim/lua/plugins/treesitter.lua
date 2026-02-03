require("nvim-treesitter").setup {
	install_dir = vim.fn.stdpath("data") .. "/site"	
}

require"nvim-treesitter.configs".setup {
	ensure_installed = { 
		"c", "bash", "lua", "python", "javascript", "typescript", 
		"html", "css", "json", "markdown", "latex"
	}
}
