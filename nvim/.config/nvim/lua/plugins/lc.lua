return {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html",
  -- load at startup only when launched as `nvim leetcode.nvim`
  lazy = "leetcode.nvim" ~= vim.fn.argv(0, -1),
  cmd = "Leet",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    storage = {
      home = vim.fn.expand("~/oicp/lc"),
    },
    lang = "cpp",
  },
}
