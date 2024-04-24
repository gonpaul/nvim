
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- compile command
vim.api.nvim_set_keymap('n', '<Leader>c', ':!clang++ -std=c++20 -o %:r %<CR>', { noremap = true })

-- vim.cmd[[
--   " Automatically open the quickfix window after running :make
--   autocmd QuickFixCmdPost [^l]* cwindow
-- ]]

vim.g.node_host_prog = '/usr/local/bin/neovim-node-host'

