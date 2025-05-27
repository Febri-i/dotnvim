vim.keymap.set("n", "<leader>ld", "<cmd>lua vim.diagnostic.open_float()<cr>")
vim.keymap.set("n", "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
vim.keymap.set("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<CR>")
vim.keymap.set("n", "<leader>lh", "<cmd>lua vim.lsp.buf.hover()<CR>");
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
return {}
