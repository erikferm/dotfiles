local keymap = {}

--[[
Maps keys to new values
Arguments:
  mode: n|i|v etc
  left: left side of the mapping
  right: right side of the mapping
  opts: options
Example:
  set('n', '<C-h>', '<C-w>h', { noremap = true })
  will make ctrl-h perform the same action as ctrl-w h in normal mode
--]]
function keymap.set(mode, keys, cmd, opts)
  vim.api.nvim_set_keymap(mode, keys, cmd, opts)
end

local opts = { noremap = true }
-- Change windows with ctrl - hjkl
keymap.set('n', '<C-h>', '<C-w>h', opts)
keymap.set('n', '<C-j>', '<C-w>j', opts)
keymap.set('n', '<C-k>', '<C-w>k', opts)
keymap.set('n', '<C-l>', '<C-w>l', opts)
-- Center on next selected after search
keymap.set('n', 'n', 'nzzzv', opts)
keymap.set('n', 'N', 'Nzzzv', opts)

-- Clean search highlight
keymap.set('n', '<leader><space>', ':noh<cr>', opts)

return keymap
