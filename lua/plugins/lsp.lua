return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tailwindcss = {
        filetypes = { "html", "elixir", "eelixir", "heex" },
        init_options = {
          userLanguages = {
            elixir = "html-eex",
            eelixir = "html-eex",
            heex = "html-eex",
          },
        },
      },
      tsserver = {
        settings = {
          typescript = {
            inlayHints = false,
          },
        },
      },
      vtsls = {
        settings = {
          typescript = {
            inlayHints = {
              enumMemberValues = { enabled = false },
              functionLikeReturnTypes = { enabled = false },
              parameterNames = { enabled = false },
              parameterTypes = { enabled = false },
              propertyDeclarationTypes = { enabled = false },
              variableTypes = { enabled = false },
            },
          },
        },
      },
      elixirls = {
        enabled = false,
      },
      lexical = {
        cmd = { "/Users/lucasqueiroz/lexical/_build/dev/package/lexical/bin/start_lexical.sh" },
        root_dir = function(fname)
          local lspconfig = require("lspconfig")
          return lspconfig.util.root_pattern("mix.exs", ".git")(fname) or vim.loop.os_homedir()
        end,
        filetypes = { "elixir", "eelixir", "heex" },
        -- optional settings
        settings = {},
      },
    },

    inlay_hints = {
      enable = false,
    },
  },
}
