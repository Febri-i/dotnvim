vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client == nil then
			return
		end
		-- if client.server_capabilities.inlayHintProvider then
		vim.lsp.inlay_hint.enable(true)
		-- end
	end,
})
