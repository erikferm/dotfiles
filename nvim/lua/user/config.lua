local o = vim.opt
-- Leader key
vim.g.mapleader = ','
-- Tabs
o.expandtab = true
o.shiftwidth = 2
o.softtabstop = 0
o.tabstop=2

-- Colors
vim.g.colors_name = 'PaperColor'
o.background = 'dark'

-- Encoding
o.encoding = 'utf-8'
o.fileencoding = 'utf-8'
o.fileencodings = 'utf-8'

-- Numbers
o.nu = true

-- Don't use swapfiles
o.swapfile = false

-- Make the yank buffer available in clipboard and vice verca
o.clipboard = 'unnamedplus'

local keymap = require('user.keybindings')

local opts = { noremap = true }
-- Change windows with ctrl - hjkl
keymap.set('n', '<C-h>', '<C-w>h', opts)
keymap.set('n', '<C-j>', '<C-w>j', opts)
keymap.set('n', '<C-k>', '<C-w>k', opts)
keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Center on next selected after search
keymap.set('n', 'n', 'nzzzv', opts)
keymap.set('n', 'N', 'Nzzzv', opts)

-- Clean search highlight
keymap.set('n', '<leader><space>', ':noh<cr>', opts)

keymap.set('n', '<leader>h', ':split<cr>', opts)
keymap.set('n', '<leader>v', ':vsplit<cr>', opts)

