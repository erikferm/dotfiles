local server = {}

local root_path = vim.fn.stdpath('data') .. "/lsp_servers/terraform/"

server = {
  name = 'terraformls',
  filetypes = { 'terraform' },
  cmd = { root_path .. "terraform-ls", "serve" },
  settings = {}
}

return server
