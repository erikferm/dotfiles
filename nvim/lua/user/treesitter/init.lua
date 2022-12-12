local configs = require('nvim-treesitter.configs')
configs.setup {
  ensure_installed = {"hcl","go","lua","rust","python"},
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  }
}
