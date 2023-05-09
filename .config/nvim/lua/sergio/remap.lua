local nnoremap = require("sergio.keymap").nnoremap
local inoremap = require("sergio.keymap").inoremap

vim.keymap.set("n", "<leader>fv", vim.cmd.Ex)

vim.keymap.set("n", "<C-f>", "<C-d>zz")
vim.keymap.set("n", "<C-b>", "<C-u>zz")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("v", "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

vim.api.nvim_set_keymap("i", "<TAB>", "pumvisible() ? '<C-n>' : '<TAB>'", {noremap = true, silent = true, expr = true, replace_keycodes = false})
