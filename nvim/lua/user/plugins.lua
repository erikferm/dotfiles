local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end
require('packer').startup(
  function(use)
    use 'wbthomason/packer.nvim'
    use 'NLKNguyen/papercolor-theme'
    use 'rebelot/kanagawa.nvim'
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
    use 'preservim/nerdtree'
    use {
      'nvim-lualine/lualine.nvim',
      requires = {
        'kyazdani42/nvim-web-devicons',
      }
    }
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
    if packer_bootstrap then
      require('packer').sync()
    end
  end
)
