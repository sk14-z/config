-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("i", "<C-h>", "<left>")
map("i", "<C-j>", "<down>")
map("i", "<C-k>", "<up>")
map("i", "<C-l>", "<Right>")
map("i", "<C-;>", "<esc>")

map("n", "<tab>", "<cmd>bnext<cr>")
map("n", "<S-tab>", "<cmd>bprevious<cr>")
map("n", "<leader>z", LazyVim.ui.bufremove)

map("n", "<leader>m", "<cmd>Vivify<cr>")

-- gcc for comments
