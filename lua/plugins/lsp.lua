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
    },
    inlay_hints = {
      enable = false,
    },
  },
}
