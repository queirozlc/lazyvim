return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    enable = false,
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
          bold = true,
          italic = false,
          transparency = false,
        },
      })
    end,
  },
  { "datsfilipe/vesper.nvim", lazy = false },
  { "notken12/base46-colors", name = "base46" },
  { "RRethy/base16-nvim", name = "base16" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aquarium",
    },
  },
}
