return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<cr>" },
      { "<leader>gf", "<cmd>Telescope git_files<cr>" },
      { "<leader>lg", "<cmd>Telescope live_grep<cr>" },
      { "<leader>ht", "<cmd>Telescope help_tags<cr>" },
      { "<leader>ht", "<cmd>Telescope help_tags<cr>" },
      { "<leader>d",  "<cmd>Telescope diagnostics bufnr=0<cr>" },
    },
    opts = {},
  },
}
