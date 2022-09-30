local server = {}

local binary = vim.fn.stdpath('data') .. "/lsp_servers/yaml/node_modules/yaml-language-server/bin/yaml-language-server"

server = {
  name = 'yamlls',
  filetypes = { 'yaml', 'yml' },
  cmd = { binary, '--stdio' },
  settings = {}
}
return server
