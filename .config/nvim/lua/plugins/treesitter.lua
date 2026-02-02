require('nvim-treesitter').setup {
	install_dir = vim.fn.stdpath('data') .. '/site'	
}

require'nvim-treesitter.configs'.setup {
	ensure_installed = { 
		'bash', 'css', 'html', 'javascript', 'json', 'latex', 'lua',
		'markdown', 'python', 'typescript'
	}
}
