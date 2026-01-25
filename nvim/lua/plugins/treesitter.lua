return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    opts = {
      ensure_installed = {
        "sql",
        "yaml",
        "go",
        "python",
      },
    },
  },
}
