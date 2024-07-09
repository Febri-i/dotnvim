vim.keymap.set({ "n", "i" }, "<C-s>", "<cmd>w<cr>");
vim.keymap.set({ "n", "i" }, "<D-j>", "<cmd>m+1<CR>");
vim.keymap.set({ "n", "i" }, "<D-k>", "<cmd>m-2<CR>");
vim.keymap.set("v", "<D-j>", ":m '>+1<cr>gv=gv");
vim.keymap.set("v", "<D-k>", ":m '<-2<cr>gv=gv");
vim.keymap.set({ "i", "n", "v" }, "<F2>", "<cmd>lua vim.lsp.buf.rename()<CR>")
