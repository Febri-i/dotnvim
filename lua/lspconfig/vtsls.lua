local settings = {
	updateImportsOnFileMove = { enabled = "always" },
	format = {
		enable = false,
	},
	inlayHints = {
		parameterNames = { enabled = "literals" },
		parameterTypes = { enabled = true },
		variableTypes = { enabled = true },
		propertyDeclarationTypes = { enabled = true },
		functionLikeReturnTypes = { enabled = true },
		enumMemberValues = { enabled = true },
	},
}

vim.lsp.config('vtsls', {
	settings = {
		vtsls = {
			enableMoveToFileCodeAction = true,
			autoUseWorkspaceTsdk = true,
			experimental = {
				completion = {
					enableServerSideFuzzyMatch = true,
					entriesLimit = 3000,
				},
			},

		},
		javascript = settings,
		typescript = settings,
	}
})

vim.lsp.enable('vtsls')
