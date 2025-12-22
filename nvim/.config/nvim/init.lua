require("config.lazy")

require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/LuaSnip/" })

vim.api.nvim_create_user_command("CmpBorderDebug", function()
  local ok_cmp = pcall(require, "cmp")
  local ok_blink = pcall(require, "blink.cmp")
  print("nvim-cmp loaded: " .. tostring(ok_cmp) .. " | blink.cmp loaded: " .. tostring(ok_blink))
end, {})
