local server = {}

local root_path = vim.fn.stdpath('data') .. "/lsp_servers/rust/"
server = {
  name = 'rust_analyzer',
  cmd = { root_path .. 'rust-analyzer' },
  settings = {}
}
return server
