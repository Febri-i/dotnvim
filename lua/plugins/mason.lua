return {
	"williamboman/mason.nvim",
	dependencies = { "williamboman/mason-lspconfig.nvim",
		'neovim/nvim-lspconfig'
	},
	config = function()
		require("mason").setup();
		require("mason-lspconfig").setup({
			ensure_installed = { "vtsls", "cssls", "lua_ls", "emmet_language_server" },
			handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup({
						settings = {
							completions = {
								completeFunctionCalls = true
							}
						}
					})
				end

			}
		})
	end
}
