return {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html",
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
