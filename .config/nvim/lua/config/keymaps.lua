-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set('x', 'ys', '<Plug>VSurround', { silent = true })

--vscode keys
if vim.g.vscode then
  vim.api.nvim_del_keymap('n', '<C-/>')

  vim.keymap.set('n', '<C-j>', ':call VSCodeNotify("workbench.action.navigateDown")<CR>', { silent = true })
  vim.keymap.set('x', '<C-j>', ':call VSCodeNotify("workbench.action.navigateDown")<CR>', { silent = true })
  vim.keymap.set('n', '<C-/>', '<Plug>VSCodeCommentaryLinegv', { silent = true })
  vim.keymap.set('x', '<C-/>', '<Plug>VSCodeCommentarygv', { silent = true })

  vim.keymap.set('n', '<C-k>', ':call VSCodeNotify("workbench.action.navigateUp")<CR>', { silent = true })
  vim.keymap.set('x', '<C-k>', ':call VSCodeNotify("workbench.action.navigateUp")<CR>', { silent = true })

  vim.keymap.set('n', '<C-h>', ':call VSCodeNotify("workbench.action.navigateLeft")<CR>', { silent = true })
  vim.keymap.set('x', '<C-h>', ':call VSCodeNotify("workbench.action.navigateLeft")<CR>', { silent = true })

  vim.keymap.set('n', '<C-l>', ':call VSCodeNotify("workbench.action.navigateRight")<CR>', { silent = true })
  vim.keymap.set('x', '<C-l>', ':call VSCodeNotify("workbench.action.navigateRight")<CR>', { silent = true })

  vim.keymap.set('n', '<C-w>_', ':<C-u>call VSCodeNotify("workbench.action.toggleEditorWidths")<CR>', { silent = true })

  vim.keymap.set('n', '<Space>', ':call VSCodeNotify("whichkey.show")<CR>', { silent = true })
  vim.keymap.set('x', '<Space>', ':call VSCodeNotify("whichkey.show")<CR>', { silent = true })
end
