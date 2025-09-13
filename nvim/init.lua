vim.g.maplocalleader = " "
-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.g.wiki_root = "~/wiki"

vim.cmd("set nornu")

local keys = require("lazyvim.plugins.lsp.keymaps").get()
keys[#keys + 1] = { "<C-k>", false, mode = { "i" } }
vim.api.nvim_set_keymap("i", "<C-k>", "<up>", { noremap = true, silent = true })
