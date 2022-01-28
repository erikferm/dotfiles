local lua = require('user.lsp.sumneko_lua')
local go = require('user.lsp.gopls')
local pyright = require('user.lsp.pyright')

--local lsp_installer = require('nvim-lsp-installer')
--lsp_installer.on_server_ready(
--  function(server)
--    local opts = {}
--    if server.name == 'sumneko_lua' then
--      opts = lua_server.opts
--    end
--    server:setup(opts)
--  end
--)

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())


local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local opts = { noremap = true }
  buf_set_keymap('n', 'gd', ':lua vim.lsp.buf.definition()<cr>zz', opts)
  buf_set_keymap('n', 'gD', ':lua vim.lsp.buf.declaration()<cr>', opts)
  buf_set_keymap('n', 'gi', ':lua vim.lsp.buf.implementation()<cr>', opts)
  buf_set_keymap('n', 'gw', ':lua vim.lsp.buf.document_symbol()<cr>', opts)
  buf_set_keymap('n', 'gw', ':lua vim.lsp.buf.workspace_symbol()<cr>', opts)
  buf_set_keymap('n', 'gr', ':lua vim.lsp.buf.references()<cr>', opts)
  buf_set_keymap('n', 'gt', ':lua vim.lsp.buf.type_definition()<cr>', opts)
  buf_set_keymap('n', 'K', ':lua vim.lsp.buf.hover()<cr>', opts)
  buf_set_keymap('n', '<c-k>', ':lua vim.lsp.buf.signature_help()<cr>', opts)
  buf_set_keymap('n', '<leader>af', ':lua vim.lsp.buf.code_action()<cr>', opts)
  buf_set_keymap('n', '<leader>rn', ':lua vim.lsp.buf.rename()<cr>', opts)
  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end
end


-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
local lspconfig = require('lspconfig')

local servers = {lua, go, pyright}

for _, lsp in ipairs(servers) do
  lspconfig[lsp.name].setup {
    on_attach = on_attach,
    cmd = lsp.cmd,
    settings = lsp.settings,
    capabilities = capabilities
  }
end

