require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "gi", vim.lsp.buf.implementation, {
  desc = "Go to implementation",
})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
