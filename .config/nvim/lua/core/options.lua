local global_options = {
	c_syntax_for_h = 1,
}

for k, v in pairs(global_options) do
	vim.g[k] = v
end

local options = {
	tabstop = 4,
	shiftwidth = 4,
	mouse = "a",
	clipboard = "unnamedplus", -- use system clipboard
	swapfile = false,
	ttyfast = true, -- faster scrolling
	smoothscroll = true,
	termguicolors = true,
	history = 100, -- command line history,
	ignorecase = true, -- ignore case while searching
	smartcase = true, -- do not ignore case when caps are used
	cursorline = true, -- highlight current line
	number = true, -- enable line numbering
	showmode = false, -- handled by lualine
	showcmd = false,
	shm = "ltToOCFSs", -- Ss-flags disable vim search messages 
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
