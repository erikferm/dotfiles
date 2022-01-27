require('packer').startup(
  function()
    use 'wbthomason/packer.nvim'
    use 'NLKNguyen/papercolor-theme'
    use 'christoomey/vim-tmux-navigator'
    use {
      'nvim-treesitter/nvim-treesitter',
      commit = '668de0951a36ef17016074f1120b6aacbe6c4515',
    }
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use {
      'nvim-telescope/telescope.nvim',
      requires = {
          'nvim-lua/plenary.nvim',
          'nvim-lua/popup.nvim',
          'kyazdani42/nvim-web-devicons',
          'BurntSushi/ripgrep'
      }
    }
    use { "nvim-telescope/telescope-file-browser.nvim" }
  end
)

local configs = require('nvim-treesitter.configs')
configs.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  }
}
