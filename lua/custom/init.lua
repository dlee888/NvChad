-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.cmd "autocmd BufNewFile,BufRead *.bsv set ft=bsv"
vim.cmd "autocmd BufNewFile,BufRead *.ms set ft=bsv"
vim.cmd "autocmd FileType bsv set shiftwidth=4 expandtab smarttab"

