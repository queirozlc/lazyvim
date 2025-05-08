local M = {
  "LunarVim/breadcrumbs.nvim",
  events = { "LspAttach" },
  dependencies = {
    { "SmiteshP/nvim-navic" },
  },
}

function M.config()
  require("breadcrumbs").setup()
end

return M
