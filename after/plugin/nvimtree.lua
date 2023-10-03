require("nvim-tree").setup(require("config.nvtree-conf"))

vim.keymap.set('n', '<leader>bb', "<cmd>bprev<CR>")
vim.keymap.set('n', '<leader>bn', "<cmd>bnext<CR>")
