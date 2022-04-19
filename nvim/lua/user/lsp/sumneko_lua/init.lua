local server = {}

local root_path = vim.fn.stdpath('data') .. "/lsp_servers/sumneko_lua/extension/server/main.lua"
local binary = vim.fn.stdpath('data') .. "/lsp_servers/sumneko_lua/extension/server/bin/lua-language-server"
server = {
  name = 'sumneko_lua',
  cmd = {binary, "-E", root_path},
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim', 'use' }
      }
    }
  }
}

return server
