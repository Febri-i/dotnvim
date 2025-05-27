vim.keymap.set({ "n", "i", "v" }, "<C-h>", "<ESC><C-w>h");
vim.keymap.set({ "n", "i", "v" }, "<C-j>", "<ESC><C-w>j");
vim.keymap.set({ "n", "i", "v" }, "<C-k>", "<ESC><C-w>k");
vim.keymap.set({ "n", "i", "v" }, "<C-l>", "<ESC><C-w>l");


vim.keymap.set({ "n", "i", "v" }, "<C-S-h>", [[<cmd>vertical resize +5<cr>]]);
vim.keymap.set({ "n", "i", "v" }, "<C-S-j>", [[<cmd>horizontal resize +2<cr>]]);
vim.keymap.set({ "n", "i", "v" }, "<C-S-k>", [[<cmd>horizontal resize -2<cr>]]);
vim.keymap.set({ "n", "i", "v" }, "<C-S-l>", [[<cmd>vertical resize -5<cr>]]);
vim.keymap.set("n", "<leader>h", "<cmd>nohl<cr>")


return {}
