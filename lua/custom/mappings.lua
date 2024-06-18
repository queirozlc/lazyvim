local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Neo Tree

-- Focus NeoTree
map("n", "<leader>m", "<cmd>Neotree toggle right<CR>", opts)
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
map("n", "<leader>O", "<cmd>Oil --float<CR>", { desc = "Open Oil", noremap = true, silent = true })

map("n", "Q", "<cmd>%bd<CR>", { desc = "Close all buffers", noremap = true, silent = true })

-- Move what is under cursor up and down
map("n", "<A-k>", "<cmd>m .-2<CR>==", opts)
map("n", "<A-j>", "<cmd>m .+1<CR>==", opts)

-- Disable Recording Macro
map("n", "q", "<Nop>", { noremap = true, silent = true })

map("n", "<leader>k", "<cmd>LazyDocker<CR>", { desc = "Lazy Docker 🐳", noremap = true, silent = true })
