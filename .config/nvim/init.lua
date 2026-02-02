-- automatically install vim-plug & plugins
local data_dir = vim.fn.stdpath('data')
if vim.fn.empty(vim.fn.glob(data_dir .. '/site/autoload/plug.vim')) == 1 then
	vim.cmd('silent !curl -fLo ' .. data_dir .. '/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
	vim.o.runtimepath = vim.o.runtimepath
	vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end

-- load plugins
local vim = vim
local Plug = vim.fn['plug#']

vim.g.start_time = vim.fn.reltime()
vim.loader.enable()
vim.call('plug#begin')

Plug('nvim-tree/nvim-tree.lua') -- file explorer
Plug('nvim-tree/nvim-web-devicons') -- pretty icons
Plug('windwp/nvim-autopairs') -- bracket closing
Plug('folke/which-key.nvim') -- which-key menu
Plug('nvim-treesitter/nvim-treesitter') -- syntax highlighting
Plug('catgoose/nvim-colorizer.lua') -- show colors in text
Plug('bluz71/vim-moonfly-colors') -- color theme
Plug('numToStr/Comment.nvim') -- improved commenting
Plug('lewis6991/gitsigns.nvim') -- git support
Plug('romgrk/barbar.nvim') -- improved tabs
Plug('nvim-lualine/lualine.nvim') -- improved status line
Plug('numToStr/FTerm.nvim') -- floating terminal
Plug('roobert/search-replace.nvim') -- better search and replace
Plug('neovim/nvim-lspconfig') -- LSP configs
Plug('mason-org/mason.nvim') -- LSP package manager 
Plug('folke/trouble.nvim') -- diagnostics
Plug('b0o/SchemaStore.nvim') -- enable JSON schemas

vim.call('plug#end')


require("core.options")
require("core.mappings")
require("core.autocmd")
require("core.lsp")

require("plugins.nvim-tree")
require("plugins.autopairs")
require("plugins.which-key")
require("plugins.treesitter")
require("plugins.colorizer")
require("plugins.moonfly")
require("plugins.Comment")
require("plugins.barbar")
require("plugins.lualine")
require("plugins.FTerm")
require("plugins.search-replace")
require("plugins.mason")
require("plugins.Trouble")
