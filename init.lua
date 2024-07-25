require("chipware.core")
require("chipware.lazy")

-- Set Neovim options
vim.opt.relativenumber = false -- Enable relative line numbers
vim.opt.number = true -- Enable absolute line numbers for the current line
vim.opt.virtualedit:append("onemore") -- Set virtualedit+=onemore

-- Set key mappings
vim.api.nvim_set_keymap("n", "1", "^", { noremap = true, silent = true }) -- nnoremap 1 ^
vim.api.nvim_set_keymap("n", "2", "g$", { noremap = true, silent = true }) -- nnoremap 2 g$
