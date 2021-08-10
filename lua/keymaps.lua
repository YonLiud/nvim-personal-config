vim.g.mapleader = ' '

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', opts) -- Open file explorer
keymap('n', '<C-s>', ':w<CR>', opts) -- Save file in normal mode
keymap('i', '<C-s>', '<C-o>:w<CR>', opts) -- Save file in insert mode

-- Telescope keymaps
keymap('n', 'ff', ':Telescope find_files<CR>', opts) -- Find files
