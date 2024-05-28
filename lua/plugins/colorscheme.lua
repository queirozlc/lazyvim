-- return {
--   {
--     "rose-pine/neovim",
--     name = "rose-pine",
--     lazy = false,
--     enable = false,
--     config = function()
--       return require("rose-pine").setup({
--         variant = "auto", -- auto, main, moon, or dawn
--         dark_variant = "main", -- main, moon, or dawn
--         dim_inactive_windows = false,
--         extend_background_behind_borders = true,
--
--         enable = {
--           terminal = true,
--           legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
--           migrations = true, -- Handle deprecated options automatically
--         },
--
--         styles = {
--           bold = true,
--           italic = false,
--           transparency = false,
--         },
--       })
--     end,
--   },
--   { "datsfilipe/vesper.nvim", lazy = false },
--   -- { "notken12/base46-colors", name = "base46" },
--   { "RRethy/base16-nvim", name = "base16" },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "tokyonight",
--     },
--   },
-- }
--

return {
  {
    "oxfist/night-owl.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    name = "night-owl",
    config = function()
      require("night-owl").setup()
      vim.cmd.colorscheme("night-owl")

      vim.cmd("highlight Normal guibg=None guifg=None")
      vim.cmd("highlight NonText guibg=None guifg=None")
      vim.cmd("highlight SignColumn guibg=None guifg=None")
      vim.cmd("highlight EndOfBuffer guifg=#001728")
      -- vim.cmd('highlight VertSplit ctermbg=NONE ctermfg=15')
      vim.cmd("highlight VertSplit guibg=#011627 guifg=#011627")
      vim.cmd("highlight GitGutterAdd guibg=NONE guifg=#22da6e")
      vim.cmd("highlight GitGutterChange guibg=NONE guifg=#21c7a8")
      vim.cmd("highlight GitGutterChangeDelete guibg=NONE guifg=#ef5350")
      vim.cmd("highlight GitGutterDelete guibg=NONE guifg=#ef5350")
      vim.cmd("highlight DiagnosticSignError guibg=NONE guifg=#e27878")
      vim.cmd("highlight DiagnosticSignWarn guibg=NONE guifg=#e27878")
      vim.cmd("highlight DiagnosticSignHint guibg=NONE")
      vim.cmd("highlight IblIndent guifg=#4b6479 gui=nocombine")
      vim.cmd("highlight FloatermBorder guibg=NONE guifg=#44657b")
      vim.cmd("highlight FloatBorder guibg=None guifg=#44657b")
      vim.cmd("highlight SignifySignAdd guibg=none guifg=#22da6e")
      vim.cmd("highlight SignifySignChange guibg=none guifg=#ffeb95")
      vim.cmd("highlight SignifySignDelete guibg=none guifg=#ef5350")
      vim.cmd("highlight BufferLineSeparator guibg=None guifg=#161821")
      vim.cmd("highlight TroubleSignOther guibg=None guifg=green")
      vim.cmd("highlight TroubleFoldIcon guifg=None")
      vim.cmd("highlight TroubleCount guibg=None")
      vim.cmd("highlight TelescopeBorder guifg=#44657b")
      vim.cmd("highlight TelescopePromptBorder guifg=#44657b")
      vim.cmd("highlight TelescopeResultsBorder guifg=#44657b")
      vim.cmd("highlight FPerson guifg=#4c5375 guibg=#1E2132")
      vim.cmd("highlight Pmenu guibg=#161821")
      vim.cmd("highlight CmpPmenu guifg=#8ab8c2")
      vim.cmd("highlight CmpPmenuBorder guifg=#44657b")
      -- these statusline bg colors are different because thus way it hides the caret
      vim.cmd("highlight StatusLine guifg=#001625 guibg=#001625")
      vim.cmd("highlight StatusLineNC guifg=#001625 guibg=#001624")
      vim.cmd("highlight NvimTreeIndentMarker guifg=#4b6479")
      vim.cmd("highlight NvimTreeEndOfBuffer guifg=#011627")
      vim.cmd("highlight NvimTreeFolderArrowOpen guifg=#4b6479")
      vim.cmd("highlight NvimTreeFolderArrowClosed guifg=#4b6479")
      vim.cmd("highlight NvimTreeNormal guifg=#5f7e97")
      vim.cmd("highlight NvimTreeCursorLine guibg=None")
      -- vim.cmd('highlight WinSeparator guifg=#4b6479')
      vim.cmd("highlight WinSeparator guifg=#011627")

      vim.cmd("highlight NeoTreeIndentMarker guifg=#4b6479")
      vim.cmd("highlight NeoTreeGitIgnored guifg=#4b6479")
      vim.cmd("highlight NeoTreeDimText guifg=#4b6479")
      vim.cmd("highlight NeoTreeStats guifg=#4b6479")
      vim.cmd("highlight NeoTreeStatsHeader guifg=#4b6479")
      vim.cmd("highlight NeoTreeWinSeparator guibg=NONE ctermfg=15")
      vim.cmd("highlight NeoTreeTabInactive guifg=#4b6479")
      vim.cmd("highlight NeoTreeTabSeparatorInactive guifg=#011627")
      vim.cmd("highlight NeoTreeTabSeparatorActive guifg=#011627")
      vim.cmd("highlight NeoTreeNormal guibg=None guifg=None")
    end,
  },
}
