return {
  "LunarVim/breadcrumbs.nvim",
  event = "BufRead",
  config = function()
    require("breadcrumbs").setup()
  end,
}
