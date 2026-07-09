require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
map("n", "<leaded>dz", vim.diagnostic.open_float, { desc = "open diagnostic" })
map("n", "<leader>fe", function()
  require("telescope.builtin").symbols({ sources = { "emoji" } })
end, { desc = "Emoji picker" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

local smart_splits = require("smart-splits")

-- navegação
vim.keymap.set("n", "<C-h>", smart_splits.move_cursor_left, { desc = "Navegar split esquerda" })
vim.keymap.set("n", "<C-j>", smart_splits.move_cursor_down, { desc = "Navegar split baixo" })
vim.keymap.set("n", "<C-k>", smart_splits.move_cursor_up, { desc = "Navegar split cima" })
vim.keymap.set("n", "<C-l>", smart_splits.move_cursor_right, { desc = "Navegar split direita" })

-- resize
vim.keymap.set("n", "<A-Left>", smart_splits.resize_left, { desc = "Resize split esquerda" })
vim.keymap.set("n", "<A-Down>", smart_splits.resize_down, { desc = "Resize split baixo" })
vim.keymap.set("n", "<A-Up>", smart_splits.resize_up, { desc = "Resize split cima" })
vim.keymap.set("n", "<A-Right>", smart_splits.resize_right, { desc = "Resize split direita" })
