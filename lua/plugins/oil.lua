return {
  "stevearc/oil.nvim",
  event = "VeryLazy",
  config = function()
    require("oil").setup({
      default_file_explorer = false,
      float = {
        max_height = 20,
        max_width = 60,
      },
    })
  end,
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
