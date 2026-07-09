require "nvchad.options"

vim.api.nvim_create_autocmd("FileType", {
    pattern = "haskell",
    callback = function()
        pcall(vim.treesitter.stop)
    end,
})

-- add yours here!
local opt = vim.opt
local o = vim.o
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.scrolloff = 10
opt.colorcolumn = "120"
o.relativenumber = true
-- local o = vim.o
