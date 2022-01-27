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
function keymap.set(mode, left, right, opts)
  vim.api.nvim_set_keymap(mode, left, right, opts)
end


return keymap
