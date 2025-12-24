return {
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    event = "InsertEnter",
    dependencies = {
      "rafamadriz/friendly-snippets",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      local ls = require("luasnip")

      require("luasnip.loaders.from_vscode").lazy_load()

      require("luasnip.loaders.from_lua").load({
        paths = vim.fn.expand("~/.config/nvim/LuaSnip/"),
      })

      ls.config.setup({
        history = true,
        updateevents = "TextChanged,TextChangedI",
        enable_autosnippets = false,
      })
    end,
  },
}
