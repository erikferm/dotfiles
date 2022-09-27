-- See https://github.com/microsoft/pyright/blob/main/docs/settings.md for settings

-- Basically This is only for the basic setup for pyright
-- If we want to specify more specific configs we should do that with a pyrightconfig.json file in the project
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
      },
      -- This assumes that we keep the virtualenv for the project in the root
      venvPath = '.'
    }
  }
}

return server
