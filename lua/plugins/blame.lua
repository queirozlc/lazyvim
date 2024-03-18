return {
  "f-person/git-blame.nvim",
  event = "BufReadPost",
  config = function()
    require("gitblame").setup({
      enable = true,
    })
  end,
}
