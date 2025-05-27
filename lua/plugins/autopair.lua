return {
	'windwp/nvim-autopairs',
	dependencies = { "windwp/nvim-ts-autotag" },
	event = "InsertEnter",
	opts = {},
	config = function()
		require('nvim-ts-autotag').setup({});
		require('nvim-autopairs').setup({});
	end
}
