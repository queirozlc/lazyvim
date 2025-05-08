return {
  "zbirenbaum/copilot.lua",
  opts = {
    filetypes = {
      yaml = true,
    },
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = {
      model = "claude-3.7-sonnet-thought",
    },
  },
}
