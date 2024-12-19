return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {'nvim-tree/nvim-web-devicons', lazy = true},
    opts = {
      options = {
        icons_enabled = true,
        theme = vim.g.colors_name,
      },
    },
  }
}
