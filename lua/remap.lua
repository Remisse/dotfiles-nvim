vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>nv', "<cmd> NvimTreeToggle <CR>")
vim.keymap.set('n', '<leader><CR>', ':so ~/.config/nvim/init.lua<CR>')
vim.keymap.set('n', '<C-p>', 'GFiles<CR>')

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('x', '<leader>p', '\"_dP')

vim.api.nvim_set_keymap(
  "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>",
  { noremap = true }
)
-- Show all diagnostics on current line in floating window
vim.api.nvim_set_keymap(
  'n', '<Leader>dg', ':lua vim.diagnostic.open_float()<CR>',
  { noremap = true, silent = true }
)
-- Go to next diagnostic (if there are multiple on the same line, only shows
-- one at a time in the floating window)
vim.api.nvim_set_keymap(
  'n', '<Leader>nd', ':lua vim.diagnostic.goto_next()<CR>',
  { noremap = true, silent = true }
)
-- Go to prev diagnostic (if there are multiple on the same line, only shows
-- one at a time in the floating window)
vim.api.nvim_set_keymap(
  'n', '<Leader>pd', ':lua vim.diagnostic.goto_prev()<CR>',
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  'n', '<Leader>ca', ':lua vim.lsp.buf.code_action()<CR>',
  { noremap = true, silent = true }
)
