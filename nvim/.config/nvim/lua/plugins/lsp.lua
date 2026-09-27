-- Servers are configured through LazyVim's nvim-lspconfig spec, which drives
-- mason-lspconfig v2 (`automatic_enable`) and vim.lsp.config/enable.
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = {
          keys = {
            { "<leader>rn", vim.lsp.buf.rename, desc = "LSP Rename", has = "rename" },
          },
        },
        clangd = {
          cmd = { "clangd", "--background-index" },
        },
        lua_ls = {},
        pyright = {},
        -- only when gopls is installed on the system
        gopls = vim.fn.executable("gopls") == 1 and {
          mason = false,
          settings = {
            gopls = {
              analyses = {
                unusedparams = true,
                shadow = true,
              },
              staticcheck = true,
            },
          },
        } or nil,
      },
    },
  },
}
