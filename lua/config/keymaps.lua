-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
local keymap = vim.api.nvim_set_keymap

-- leader
vim.g.mapleader = " "

-- fern
keymap("n", "<leader>e", "<cmd>Fern . -reveal=% -drawer -toggle -width=40<CR>", opts)
keymap("n", "<leader>o", "", {
  callback = function()
    if vim.bo.filetype == "fern" then
      vim.cmd.wincmd "p"
    else
      vim.cmd.Fern(".", "-reveal=%", "-drawer", "-width=40")
    end
  end,
  noremap = true,
  silent = true,
})
