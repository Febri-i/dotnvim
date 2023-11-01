vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.mouse = ""

vim.opt.scrolloff = 8
vim.g.loaded_matchparen = true
vim.g.loaded_machbracket = true
vim.g.mouse = false
vim.wo.number = true
vim.wo.wrap = false
vim.wo.relativenumber = true


vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true


vim.opt.updatetime = 50

vim.cmd.colorscheme 'catppuccin'

require("bufferline").setup({
	options = {

		highlights = require("catppuccin.groups.integrations.bufferline").get(),
		themable = true,
		separator_style = "slope",
		diagnostics_indicator = function(count, level)
			local icon = level:match("error") and " " or " "
			return " " .. icon .. count
		end,
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				text_align = "center",
				separator = false,
			},
		},
	},
}
)
