return {
  "saghen/blink.cmp",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    signature = {
      enabled = true,
      window = {
        border = "rounded",
      },
    },
    appearance = {
      kind_icons = {
        Snippet = "",
      },
    },
    cmdline = {
      completion = {
        menu = {
          auto_show = true,
        },
        ghost_text = {
          enabled = true,
        },
        list = {
          selection = {
            preselect = false,
            auto_insert = true,
          },
        },
      },
    },
    completion = {
      keyword = {
        range = "full",
      },
      list = {
        selection = {
          preselect = false,
          auto_insert = true,
        },
      },
      accept = {
        auto_brackets = {
          enabled = true,
          override_brackets_for_filetypes = {
            tex = { "{", "}" },
          },
        },
      },
      menu = {
        min_width = 20,
        border = "rounded",
        winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:BlinkCmpMenuSelection,Search:None",
        draw = {
          columns = { { "kind_icon" }, { "label", gap = 1 }, { "source" } },
          components = {
            source = {
              text = function(ctx)
                local map = {
                  ["lsp"] = "[]",
                  ["path"] = "[󰉋]",
                  ["snippets"] = "[]",
                }

                return map[ctx.item.source_id]
              end,
              highlight = "BlinkCmpDoc",
            },
          },
        },
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 100,
        update_delay_ms = 50,
        window = {
          max_width = math.min(80, vim.o.columns),
          border = "rounded",
        },
      },
    },
  },
}
