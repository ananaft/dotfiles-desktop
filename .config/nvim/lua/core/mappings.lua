local function map(m, k, v)
	vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- set leader
map("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- general mappings
map("", "<C-c>", "<Esc>") -- map new escape key
map("n", "<leader>d", ":NvimTreeToggle<CR>") -- open file explorer
map("n", "<leader>?",
	function() require("which-key").show({ global = false }) end) -- show buffer local keymaps
map("", "<leader>w", ":w<CR>") -- write file
map("", "<leader>q", ":q<CR>") -- close file
map("", "<leader>Q", ":q!<CR>") -- close file without saving
map('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>') -- open floating terminal
map('t', '<A-t>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>') -- close floating terminal

-- search-replace mappings
map('n', '<leader>ros', ':SearchReplaceSingleBufferOpen<CR>')
map('n', '<leader>rom', ':SearchReplaceMultiBufferOpen<CR>')
map('n', '<leader>rss', ':SearchReplaceSingleBufferSelections<CR>')
map('n', '<leader>rsm', ':SearchReplaceMultiBufferSelections<CR>')

-- barbar mappings
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>')
map('n', '<A-.>', '<Cmd>BufferNext<CR>')
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>')
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>')
map('n', '<A-c>', '<Cmd>BufferClose<CR>')
map('n', '<A-C>', '<Cmd>BufferCloseAllButCurrent<CR>')
map('n', '<A-p>', '<Cmd>BufferPick<CR>')

-- window mappings
map('n', '<A-s>', ':split<CR>')
map('n', '<A-v>', ':vsplit<CR>')
map('n', '<A-q>', ':wincmd q<CR>')
map('n', '<A-h>', ':wincmd h<CR>')
map('n', '<A-j>', ':wincmd j<CR>')
map('n', '<A-k>', ':wincmd k<CR>')
map('n', '<A-l>', ':wincmd l<CR>')
map("n", "<A-H>", ":vertical resize -1<CR>")
map("n", "<A-L>", ":vertical resize +1<CR>")
map("n", "<A-J>", ":resize -1<CR>")
map("n", "<A-K>", ":resize +1<CR>")
map('n', '<C-A-H>', ':wincmd H<CR>')
map('n', '<C-A-J>', ':wincmd J<CR>')
map('n', '<C-A-K>', ':wincmd K<CR>')
map('n', '<C-A-L>', ':wincmd L<CR>')
