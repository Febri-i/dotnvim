return {
	'stevearc/conform.nvim',
	dependecies = {
		"williamboman/mason.nvim"
	},
	opts = {
		format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 500,
			lsp_fallback = true,
		},

	},
}
