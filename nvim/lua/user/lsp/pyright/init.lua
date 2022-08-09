-- See https://github.com/microsoft/pyright/blob/main/docs for settings
local server = {}

local binary = vim.fn.stdpath('data') .. "/lsp_servers/python/node_modules/pyright/langserver.index.js"

server = {
  name = 'pyright',
  cmd = { binary, "--stdio" },
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true,
        extraPaths = { "libs" }

      }
    }
  },
}

return server
