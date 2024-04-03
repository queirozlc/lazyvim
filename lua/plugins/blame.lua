return {
  "f-person/git-blame.nvim",
  cmd = "GitBlameToggle",
  config = function()
    require("gitblame").setup({})
  end,
}
