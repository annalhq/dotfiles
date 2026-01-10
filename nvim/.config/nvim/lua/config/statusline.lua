local M = {}

function M.setup()
  local lualine = require("lualine")
  local icon = require("config.icons")

  local diagnostics = {
    "diagnostics",
    sources = { "nvim_diagnostic" },
    sections = { "error", "warn", "info", "hint" },
    symbols = {
      error = icon.diagnostics.Error,
      warn = icon.diagnostics.Warning,
      info = icon.diagnostics.Info,
      hint = icon.diagnostics.Hint,
    },
    colored = true,
    update_in_insert = false,
  }

  local diff = {
    "diff",
    source = function()
      local gs = vim.b.gitsigns_status_dict
      if gs then
        return {
          added = gs.added or 0,
          modified = gs.changed or 0,
          removed = gs.removed or 0,
        }
      end

      local s = vim.b.minidiff_summary
      if s then
        return {
          added = s.add or 0,
          modified = s.change or 0,
          removed = s.delete or 0,
        }
      end
    end,
    symbols = {
      added = icon.git.LineAdded .. " ",
      modified = icon.git.LineModified .. " ",
      removed = icon.git.LineRemoved .. " ",
    },
    colored = true,
  }

  lualine.setup({
    options = {
      theme = "gruvbox-material", -- TODO: integrate gruvchad statusline theme
      globalstatus = true,
      section_separators = "",
      component_separators = "",
      disabled_filetypes = {
        statusline = { "alpha", "lazy", "mason", "NvimTree" },
      },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = {
        { "branch", icon = "" },
      },
      lualine_c = { "filename" },
      lualine_x = {
        diff,
        diagnostics,
        { "filetype", icon_only = true },
      },
      lualine_y = {},
      lualine_z = {},
    },
  })
end

return M
