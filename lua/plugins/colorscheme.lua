return {
  { "nyoom-engineering/oxocarbon.nvim" },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    config = function()
      return require("rose-pine").setup({
        variant = "auto", -- auto, main, moon, or dawn
        dark_variant = "main", -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true, -- Handle deprecated options automatically
        },

        styles = {
          bold = false,
          italic = false,
          transparency = true,
        },
      })
    end,
  },
  { "datsfilipe/vesper.nvim", lazy = false },
  { "ayu-theme/ayu-vim", name = "ayu" },
  { "notken12/base46-colors", name = "base46" },
  { "RRethy/base16-nvim", name = "base16" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rxyhn",
    },
  },
}
