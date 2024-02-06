-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
local keymap = vim.api.nvim_set_keymap

-- leader
vim.g.mapleader = " "

-- Save file by CTRL-S
keymap("n", "<C-s>", ":w<CR>", silent)

-- Don't yank on delete char
keymap("n", "x", '"_x', silent)
keymap("n", "X", '"_X', silent)
keymap("v", "x", '"_x', silent)
keymap("v", "X", '"_X', silent)

vim.cmd[[
command! -nargs=* T split | wincmd j | resize 20 | terminal <args>
tnoremap jj <c-\><c-n>
]]
