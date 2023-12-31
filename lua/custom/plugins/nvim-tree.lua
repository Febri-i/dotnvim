vim.g.loaded_netrw = 1

vim.g.loaded_netrwPlugin = 1

local function my_on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)
	vim.keymap.set("n", "<C-p>", api.node.open.horizontal, opts("Open: Horizontal  Split"))
	vim.keymap.set("n", "<C-m>", api.node.open.vertical, opts("Open: Vertical Split"))
end


return {
	"nvim-tree/nvim-tree.lua"
	,
	config = function()
		require("nvim-tree").setup({
			sync_root_with_cwd = true,
			diagnostics = {
				enable = true,
			},
			on_attach = my_on_attach,
		})
		require("nvim-tree.api").events.subscribe("TreeOpen", function()
			vim.g.nvimtreeopen = true;
		end)

		require("nvim-tree.api").events.subscribe("TreeClose", function()
			vim.g.nvimtreeopen = false;
		end)
	end
}
