return {
  -- Add Neomake plugin to the list of plugins
  {
    "neomake/neomake",
    config = function()
      -- Optional: Configure Neomake settings if needed
      vim.g.neomake_open_list = 2 -- Automatically open the make result list
      vim.g.neomake_cpp_enabled_makers = { "g++" } -- Enable g++ for C++ compilation
    end,
  },
}
