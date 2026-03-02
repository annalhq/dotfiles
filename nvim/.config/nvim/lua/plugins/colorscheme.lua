return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },

  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- Core style
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_foreground = "material"
      vim.g.gruvbox_material_better_performance = 1

      -- Text styling
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_cursor = "auto"

      -- UI contrast
      vim.g.gruvbox_material_ui_contrast = "high"
      vim.g.gruvbox_material_statusline_style = "mix"
      vim.g.gruvbox_material_transparent_background = 0
      vim.g.gruvbox_material_menu_selection_background = "none"

      -- Diagnostics
      vim.g.gruvbox_material_diagnostic_virtual_text = "colored"

      local configuration = vim.fn["gruvbox_material#get_configuration"]()
      local palette = vim.fn["gruvbox_material#get_palette"](
        configuration.background,
        configuration.foreground,
        configuration.colors_override
      )

      vim.api.nvim_create_autocmd("ColorScheme", {
        group = vim.api.nvim_create_augroup("gruvbox_material_custom", { clear = true }),
        pattern = "gruvbox-material",
        callback = function()
          local hl = vim.api.nvim_set_hl
          hl(0, "FloatBorder", { fg = palette.grey0[1], bg = palette.bg0[1] })
          hl(0, "NormalFloat", { bg = palette.bg0[1] })

          hl(0, "CmpGhostText", { link = "Comment", default = true })
          hl(0, "CmpItemAbbrDeprecated", { fg = palette.grey0[1], bg = "NONE", strikethrough = true })
        end,
      })
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },
}
