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
      -- ===== Core style =====
      vim.g.gruvbox_material_background = "hard" -- hard | medium | soft
      vim.g.gruvbox_material_foreground = "material"
      vim.g.gruvbox_material_better_performance = 1

      -- ===== Text styling =====
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_cursor = "auto"

      -- ===== UI contrast & polish =====
      vim.g.gruvbox_material_ui_contrast = "high"
      vim.g.gruvbox_material_statusline_style = "material"
      vim.g.gruvbox_material_menu_selection_background = "orange"

      -- ===== Diagnostics =====
      vim.g.gruvbox_material_diagnostic_text_highlight = 1
      vim.g.gruvbox_material_diagnostic_line_highlight = 1
      vim.g.gruvbox_material_diagnostic_virtual_text = "colored"

      -- ===== Load =====
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },
}
