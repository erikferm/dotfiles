return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require "nvim-treesitter.configs".setup {
        ensure_installed = { "lua", "go", "vim" },
        modules = {},
        sync_install = false,
        ignore_install = {},
        auto_install = false,
        highlight = {
          enable = true,
        }
      }
    end
  }
}
