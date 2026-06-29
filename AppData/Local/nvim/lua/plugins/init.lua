return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("configs.lspconfig").defaults()
      local lspconfig = require "lspconfig"
      local servers = { "jdtls" }

      for _, lsp in ipairs(servers) do
        local opts = {}
        local has_custom, custom_opts = pcall(require, "configs." .. lsp)
        if has_custom then
          
          opts = vim.tbl_deep_extend("force", opts, custom_opts)
        end
        lspconfig[lsp].setup(opts)
      end
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },
}
