return {
  "karb94/neoscroll.nvim",
  event = "BufReadPre",
  config = function()
    require("neoscroll").setup({})
  end,
}
