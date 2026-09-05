return {
  {
    "annalhq/competitest.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    config = function()
      require("competitest").setup({
        testcases_use_single_file = true,
        run_without_testcases = true,
        remove_compiled_binary = true,
        filename_strategy = "url",
        git = {
          enabled = true,
        },
      })
    end,
  },
}
