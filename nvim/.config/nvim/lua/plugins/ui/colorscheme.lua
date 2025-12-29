return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      terminal_colors = true,
      undercurl = true,
      underline = true,
      bold = true,
      strikethrough = true,

      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },

      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      inverse = true,

      contrast = "hard",
      dim_inactive = false,
      transparent_mode = false,

      palette_overrides = {},
      overrides = {
        FloatBorder = { bg = "#282828" },
      },
    },
    config = function(_, opts)
      require("gruvbox").setup(opts)
      vim.cmd.colorscheme("gruvbox")
    end,
  },
}
