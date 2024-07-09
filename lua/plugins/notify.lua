return {
	"rcarriga/nvim-notify",
	config = function()
		require("notify").setup({
			max_width = 50,
		})
		vim.notify = require("notify")
	end
}
