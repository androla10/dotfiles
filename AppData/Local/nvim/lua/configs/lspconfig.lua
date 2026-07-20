require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "jdtls",
}

vim.lsp.enable(servers)