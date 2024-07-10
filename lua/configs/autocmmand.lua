vim.api.nvim_create_autocmd("BufWinLeave", {
	callback = function()
		vim.cmd [[mkview!]]
	end,
	pattern = "*.*"
})

vim.api.nvim_create_autocmd("BufReadPost", {
	callback = function(aa)
		vim.cmd [[silent loadview]]
	end,
	pattern = "*.*"
})
