return {
  {
    "mason-org/mason.nvim",
    event = "BufReadPre",
    opts = {},
  },

  {
    "mason-org/mason-lspconfig.nvim",
    event = "BufReadPre",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
    },
    opts = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local servers = {
        clangd = {
          cmd = { "clangd", "--background-index" },
        },
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = { globals = { "vim" } },
              workspace = { checkThirdParty = false },
            },
          },
        },
        pyright = {},
      }

      return {
        ensure_installed = { "clangd", "lua_ls", "pyright" },
        automatic_installation = true,
        handlers = {
          function(server_name)
            local server_opts = servers[server_name] or {}
            server_opts.capabilities = capabilities
            lspconfig[server_name].setup(server_opts)
          end,
        },
      }
    end,
    config = function(_, opts)
      require("mason-lspconfig").setup(opts)

      local map = vim.keymap.set
      map("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
      map("n", "gd", vim.lsp.buf.definition, { desc = "LSP Definition" })
      map("n", "gr", vim.lsp.buf.references, { desc = "LSP References" })
      map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
      map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP Rename" })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    lazy = true,
  },
}
