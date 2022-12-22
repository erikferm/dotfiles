local builtin = require('telescope.builtin')

local opts = { noremap = true }
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', builtin.git_files, {})
vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', "<CMD>Telescope file_browser<CR>", {})
