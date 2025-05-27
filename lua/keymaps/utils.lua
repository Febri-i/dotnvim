vim.keymap.set("n", "<leader>cs", "<cmd>so %<cr>")
vim.keymap.set("n", "<leader>cd", function()
	vim.cmd [[ cd ~/.config/nvim ]]
	vim.cmd [[NvimTreeOpen]]
end)

return {}
