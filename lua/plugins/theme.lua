return {
	"Shatur/neovim-ayu",
	lazy = false,
	priority = 1000,
	config = function()
		require("ayu").setup({});
		vim.cmd [[colorscheme ayu-dark]]
		vim.cmd [[hi FloatBorder guibg=NormalNC.guibg]]
	end
}
