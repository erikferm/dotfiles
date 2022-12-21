local configs = require('nvim-treesitter.configs')
configs.setup {
  ensure_installed = {
    "hcl",
    "go",
    "lua",
    "rust",
    "python",
  },
  auto_install = true,
  highlight = {
    enable = true,
    disable = {},
  }
}
