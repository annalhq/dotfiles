return {
  {
    "neomake/neomake",
    cmd = { "Neomake", "NeomakeProject", "NeomakeSh", "NeomakeInfo", "NeomakeToggle", "NeomakeEnable" },
    config = function()
      vim.g.neomake_open_list = 2
      vim.g.neomake_cpp_enabled_makers = { "g++" }
    end,
  },
}
