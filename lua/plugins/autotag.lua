local filetypes = {
  "html",
  "javascript",
  "typescript",
  "javascriptreact",
  "typescriptreact",
}

return {
  "windwp/nvim-ts-autotag",
  ft = filetypes,
  config = function()
    require("nvim-ts-autotag").setup({
      filetypes = filetypes,
    })
  end,
}
