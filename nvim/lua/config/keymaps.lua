-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("i", "<C-h>", "<left>")
map("i", "<C-j>", "<down>")
map("i", "<C-k>", "<up>")
map("i", "<C-l>", "<Right>")
map("i", "<C-;>", "<esc>")

map("n", "<tab>", "<cmd>BufferLineCycleNext<cr>")
map("n", "<S-tab>", "<cmd>BufferLineCyclePrev<cr>")
map("n", "<leader>z", function()
  Snacks.bufdelete()
end)

map("n", "<leader>m", "<cmd>Vivify<cr>")

map("n", "<C-/>", "<cmd>ToggleTerm<cr>")

map("n", "<C-o>", "<cmd>Outline<cr>")

-- gcc for comments
-- <>sr for search and replace
-- <>| splitv
-- <>_ spltih
-- <>q session stuff, restore good oomp oomp
-- <C-n> next result blink cmp
-- <C-p> prev result blink cmp
