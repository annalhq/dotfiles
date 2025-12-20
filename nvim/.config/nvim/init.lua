require("config.lazy")

require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/LuaSnip/" })

vim.cmd([[
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]])

vim.api.nvim_create_user_command("CmpBorderDebug", function()
  local ok_cmp = pcall(require, "cmp")
  local ok_blink = pcall(require, "blink.cmp")
  print("nvim-cmp loaded: " .. tostring(ok_cmp) .. " | blink.cmp loaded: " .. tostring(ok_blink))
end, {})
