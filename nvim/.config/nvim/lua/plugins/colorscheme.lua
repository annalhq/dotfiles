return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        require("catppuccin").load()
      end,
    },
  },

  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      no_italic = true,
      term_colors = true,
      transparent_background = false,

      color_overrides = {
        mocha = {
          base = "#11111b",
          mantle = "#11111b",
          crust = "#000000",
        },
      },

      integrations = {
        bufferline = true,
        cmp = true,
        dashboard = true,
        dropbar = {
          enabled = true,
          color_mode = true,
        },
        fzf = true,
        indent_blankline = { enabled = true },
        lsp_trouble = true,
        mason = true,
        noice = true,
        notify = true,
        snacks = true,
        telescope = {
          enabled = true,
          style = "nvchad",
        },
        treesitter_context = true,
        which_key = true,
      },

      custom_highlights = function(colors)
        return {
          FloatBorder = { bg = colors.mantle },
        }
      end,
    },
    specs = {
      {
        "akinsho/bufferline.nvim",
        optional = true,
        opts = function(_, opts)
          if (vim.g.colors_name or ""):find("catppuccin") then
            opts.highlights = require("catppuccin.special.bufferline").get_theme()
          end
        end,
      },
    },
  },
}
