local t = require('telescope')
local actions = require('telescope.actions')

t.setup {
  defaults ={
    mappings = {
      i = {
        ['<C-h>'] = actions.which_key,
        ['<C-j>'] = actions.move_selection_next,
        ['<C-k>'] = actions.move_selection_previous,
      }
    }
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      grouped = true,
    }
  }
}


t.load_extension "file_browser"

local k = require("user.keybindings")
local opts = { noremap = true }
k.set('n', '<leader>ff', '<CMD>Telescope find_files<CR>', opts)
k.set('n', '<leader>fb', '<CMD>Telescope file_browser<CR>', opts)
k.set('n', '<leader>lg', '<CMD>Telescope live_grep<CR>', opts)
k.set('n', '<leader>b', '<CMD>Telescope buffers<CR>', opts)
