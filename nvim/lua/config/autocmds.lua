-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd({
  "BufNewFile",
  "BufRead",
}, {
  pattern = "*.typ",
  callback = function()
    local buf = vim.api.nvim_get_current_buf()
    vim.api.nvim_buf_set_option(buf, "filetype", "typst")
  end,
})

vim.api.nvim_create_user_command("LspLogClear", function()
  local lsplogpath = vim.fn.stdpath("state") .. "/lsp.log"
  print(lsplogpath)
  if io.close(io.open(lsplogpath, "w+b")) == false then
    vim.notify("Clearning LSP Log failed.", vim.log.levels.WARN)
  end
end, { nargs = 0 })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.wrap = true
  end,
})
