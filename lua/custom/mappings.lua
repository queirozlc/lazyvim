local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Neo Tree

-- Focus NeoTree
map("n", "<leader>m", "<cmd>Neotree focus<CR>", opts)
map("n", "<m-h>", "<C-w>h", opts)
map("n", "<m-j>", "<C-w>j", opts)
map("n", "<m-k>", "<C-w>k", opts)
map("n", "<m-l>", "<C-w>l", opts)
map("n", "<m-tab>", "<c-6>", opts)
map("n", "<leader>gb", "<cmd>GitBlameToggle<CR>", opts)
map(
  "n",
  "<leader>un",
  "<cmd>NoiceDismiss <CR>",
  { desc = "Dismiss Noice Notifications", noremap = true, silent = true }
)
-- extend the opts table to insert desc
map("n", "<leader>O", "<cmd>Oil<CR>", { desc = "Open Oil", noremap = true, silent = true })

map("n", "Q", "<cmd>%bd<CR>", { desc = "Close all buffers", noremap = true, silent = true })
