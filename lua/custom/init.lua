-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.cmd "autocmd BufNewFile,BufRead *.bsv set ft=bsv"
vim.cmd "autocmd BufNewFile,BufRead *.ms set ft=bsv"
vim.cmd "autocmd FileType bsv set shiftwidth=4 expandtab smarttab"

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.c", "*.h", "*.cpp", "*.hpp", "*.cc", "*.hh", "*.c++", "*.h++", "*.cxx", "*.hxx" },
  callback = function()
    vim.bo.expandtab = true
    vim.bo.shiftwidth = 4
    vim.bo.softtabstop = 4
    vim.bo.tabstop = 4
  end,
})
