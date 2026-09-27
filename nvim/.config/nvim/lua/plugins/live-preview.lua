return {
  {
    "brianhuster/live-preview.nvim",
    dependencies = {
      "folke/snacks.nvim",
    },
    keys = {
      {
        "<leader>cp",
        "<cmd>LivePreview start<cr>",
        desc = "Live Preview",
      },
      {
        "<leader>cP",
        "<cmd>LivePreview close<cr>",
        desc = "Close Live Preview",
      },
    },
  },
}
