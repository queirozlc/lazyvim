return {
  "hrsh7th/nvim-cmp",
  dependencies = { "hrsh7th/cmp-emoji" },
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    local cmp = require("cmp")
    table.insert(opts.sources, { name = "emoji" })

    -- Window customization
    opts.window = {
      completion = {
        border = "rounded",
        winhighlight = "Normal:Pmenu,CursorLine:PmenuSel,FloatBorder:FloatBorder,Search:None",
        col_offset = -3,
        side_padding = 1,
        scrollbar = false,
        scrolloff = 8,
      },
      documentation = {
        border = "rounded",
        winhighlight = "Normal:Pmenu,FloatBorder:FloatBorder,Search:None",
      },
    }
    opts.view = {
      entries = {
        name = "custom",
        selection_order = "top_down",
      },
      docs = {
        auto_open = true,
      },
    }
    opts.preselect = cmp.PreselectMode.None
    opts.completion = {
      completeopt = "menu,menuone,noinsert,noselect",
    }
    -- Remaps the key to only accept the suggestion when pressing <CR> implicitly
    opts.mapping = cmp.mapping.preset.insert(vim.tbl_deep_extend("force", opts.mapping, {

      -- Disable key arrows
      ["<Up>"] = cmp.config.disable,
      ["<Down>"] = cmp.config.disable,
      -- Disable Enter
      ["<CR>"] = cmp.config.disable,

      ["<C-y>"] = cmp.mapping.confirm({ select = false }), -- 'select = false' to only confirm explicitly selected item
      ["<S-CR>"] = cmp.mapping.confirm({ select = false, behavior = cmp.ConfirmBehavior.Replace }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }))
  end,
}
