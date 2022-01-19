local o = vim.opt
-- Tabs
o.expandtab = true
o.shiftwidth = 2
o.softtabstop = 0

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
