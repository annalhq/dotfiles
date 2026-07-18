return {
  {
    "annalhq/competitest.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    config = function()
      require("competitest").setup({
        testcases_use_single_file = true,
        remove_compiled_binary = true,
        filename_strategy = "url",
        git = {
          enabled = true,
        },
      })
    end,
  },
}
