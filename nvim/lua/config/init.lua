local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local o = vim.opt
--
vim.g.mapleader = ","
-- Tabs
o.expandtab = true
o.shiftwidth = 2
o.softtabstop = 0
o.tabstop = 2

-- Colors
vim.o.termguicolors = true
o.background = "dark"

-- Encoding
o.encoding = "utf-8"
o.fileencoding = "utf-8"
o.fileencodings = "utf-8"

-- Numbers
o.nu = true

-- Don't use swapfiles
o.swapfile = false

-- Make the yank buffer available in clipboard and vice verca
o.clipboard = "unnamedplus"

-- set cursorline
o.cursorline = true
-- don't do recursive remapping
local opts = { noremap = true }

-- Change windows with ctrl - hjkl
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", opts)
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", opts)
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", opts)
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", opts)

-- Center on next selected after search
vim.api.nvim_set_keymap("n", "n", "nzzzv", opts)
vim.api.nvim_set_keymap("n", "N", "Nzzzv", opts)

-- Clean search highlight
vim.api.nvim_set_keymap("n", "<leader><space>", ":noh<cr>", opts)

-- Vim splits
vim.api.nvim_set_keymap("n", "<leader>hs", "<cmd>split<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>vs", "<cmd>vsplit<cr>", opts)

require("lazy").setup({
  spec = {
    -- import my plugins
    { import = "plugins" },
  },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
