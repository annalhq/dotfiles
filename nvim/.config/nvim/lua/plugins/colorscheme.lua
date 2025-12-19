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
    name = "catppuccin",
    priority = 1000,
    opts = {
      no_italic = true,
      term_colors = true,
      transparent_background = false,

      styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
      },

      color_overrides = {
        mocha = {
          base = "#11111b",
          mantle = "#11111b",
          crust = "#000000",
        },
      },

      integrations = {
        bufferline = true,
        telescope = {
          enabled = true,
          style = "nvchad",
        },
        dropbar = {
          enabled = true,
          color_mode = true,
        },
        treesitter = true,
        treesitter_context = true,
      },

      custom_highlights = function(colors)
        return {
          FloatBorder = { bg = colors.mantle },
        }
      end,
    },
  },
  {
    "akinsho/bufferline.nvim",
  },
}
