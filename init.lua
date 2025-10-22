vim.api.nvim_set_keymap('n', '\\b', ':buffers<CR>:buffer<Space>', {noremap=true, silent=false})
vim.api.nvim_set_keymap('v', 'Y', '"+y', {noremap=true, silent=false})
vim.api.nvim_set_keymap('n', 'P', '"+p', {noremap=true, silent=false})
vim.api.nvim_set_keymap('v', 'D', '"+d', {noremap=true, silent=false})
vim.api.nvim_set_keymap('i', 'jj', '<esc>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space><space>', ":Telescope find_files<cr>", {noremap = true, silent = false})
vim.o.number = true
vim.o.relativenumber = true
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
print(require("config.lazy"))
