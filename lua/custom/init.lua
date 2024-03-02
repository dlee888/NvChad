-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

-- remap autocomplete
local cmp = require "cmp"
cmp.setup {
  mapping = cmp.mapping.preset.insert {
    ["<Tab>"] = cmp.mapping.confirm { select = true },
    ["<CR>"] = cmp.mapping.abort(),
  },
}
