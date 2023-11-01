return {
	"natecraddock/workspaces.nvim"
	,
	config = function()
		require("workspaces").setup({
			auto_open = true })

		require("telescope").load_extension("workspaces")
	end
}
