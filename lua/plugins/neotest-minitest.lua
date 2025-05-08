return {
  "nvim-neotest/neotest",
  lazy = true,
  dependencies = {
    "zidhuss/neotest-minitest",
  },
  opts = {
    adapters = {
      ["neotest-minitest"] = {},
    },
  },
}
