-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("x", "ys", "<Plug>VSurround", { silent = true })
--bind capital E and B to end and beggining of line
vim.keymap.set("x", "E", "$", { silent = true })
vim.keymap.set("x", "B", "0", { silent = true })
vim.keymap.set("n", "E", "$", { silent = true })
vim.keymap.set("n", "B", "0", { silent = true })

--vscode keys
if vim.g.vscode then
  vim.api.nvim_del_keymap("n", "<C-/>")
  --visual and normal mode comments
  vim.keymap.set("n", "gcc", "<Plug>VSCodeCommentaryLine", { silent = true })
  vim.keymap.set("x", "gc", "<Plug>VSCodeCommentary", { silent = true })

  vim.keymap.set("n", "<C-j>", ':call VSCodeNotify("workbench.action.navigateDown")<CR>', { silent = true })
  vim.keymap.set("x", "<C-j>", ':call VSCodeNotify("workbench.action.navigateDown")<CR>', { silent = true })
  -- vim.keymap.set("n", "za", ':call VSCodeNotify("editor.toggleFold")<CR>', { silent = true })
  -- vim.keymap.set("x", "za", ':call VSCodeNotify("editor.toggleFold")<CR>', { silent = true })

  -- need to find a way for better line movement in vscode
  -- vim.keymap.set('x', '<M-j>', ':call VSCodeNotify("editor.action.moveLinesDownAction")<CR>', { silent = true })
  -- vim.keymap.set('x', '<M-k>', ':call VSCodeNotify("editor.action.moveLinesUpAction")<CR>', { silent = true })
  -- vim.keymap.set('n', '<M-j>', ':call VSCodeNotify("editor.action.moveLinesDownAction")<CR>', { silent = true })
  -- vim.keymap.set('n', '<M-k>', ':call VSCodeNoti
  -- vim.keymap.set('n', '<C-k>', ':call VSCodeNotify("workbench.action.navigateUp")<CR>', { silent = true })
  -- vim.keymap.set('x', '<C-k>', ':call VSCodeNotify("workbench.action.navigateUp")<CR>', { silent = true })
  --
  -- vim.keymap.set('n', '<C-h>', ':call VSCodeNotify("workbench.action.navigateLeft")<CR>', { silent = true })
  -- vim.keymap.set('x', '<C-h>', ':call VSCodeNotify("workbench.action.navigateLeft")<CR>', { silent = true })
  --
  -- vim.keymap.set('n', '<C-l>', ':call VSCodeNotify("workbench.action.navigateRight")<CR>', { silent = true })
  -- vim.keymap.set('x', '<C-l>', ':call VSCodeNotify("workbench.action.navigateRight")<CR>', { silent = true })
  --
  -- vim.keymap.set('n', '<C-w>_', ':<C-u>call VSCodeNotify("workbench.action.toggleEditorWidths")<CR>', { silent = true })
  --
  vim.keymap.set("n", "<Space>", ':call VSCodeNotify("whichkey.show")<CR>', { silent = true })
  vim.keymap.set("x", "<Space>", ':call VSCodeNotify("whichkey.show")<CR>', { silent = true })
end
