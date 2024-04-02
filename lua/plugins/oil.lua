return {
  "stevearc/oil.nvim",
  event = "VeryLazy",
  config = function()
    require("oil").setup({
      float = {
        max_height = 20,
        max_width = 60,
      },
    })
  end,
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
