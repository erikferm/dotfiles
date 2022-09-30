local server = {}

local root_path = vim.fn.stdpath('data') .. "/lsp_servers/go/"
server = {
  name = 'gopls',
  cmd = { root_path .. 'gopls' },
  settings = {}
}
return server
