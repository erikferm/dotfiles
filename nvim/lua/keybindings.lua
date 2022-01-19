
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)
keymap('n', 'gd', ':lua vim.lsp.buf.definition()<cr>', opts)
keymap('n', 'gD', ':lua vim.lsp.buf.declaration()<cr>', opts)
keymap('n', 'gi', ':lua vim.lsp.buf.implementation()<cr>', opts)
keymap('n', 'gw', ':lua vim.lsp.buf.document_symbol()<cr>', opts)
keymap('n', 'gw', ':lua vim.lsp.buf.workspace_symbol()<cr>', opts)
keymap('n', 'gr', ':lua vim.lsp.buf.references()<cr>', opts)
keymap('n', 'gt', ':lua vim.lsp.buf.type_definition()<cr>', opts)
keymap('n', 'K', ':lua vim.lsp.buf.hover()<cr>', opts)
keymap('n', '<c-k>', ':lua vim.lsp.buf.signature_help()<cr>', opts)
keymap('n', '<leader>af', ':lua vim.lsp.buf.code_action()<cr>', opts)
keymap('n', '<leader>rn', ':lua vim.lsp.buf.rename()<cr>', opts)
