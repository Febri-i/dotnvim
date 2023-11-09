vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.mouse = ""
vim.g.undotree_WindowLayout = 3;
vim.opt.scrolloff = 8
vim.g.loaded_matchparen = true
vim.g.loaded_machbracket = true
vim.g.mouse = false
vim.wo.number = true
vim.wo.wrap = false
vim.wo.relativenumber = true
vim.opt.fillchars = { eob = " " }

vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

local enableCursorline = {
	callback = function()
		vim.opt_local.cursorline = true;
	end
}

vim.api.nvim_create_autocmd("BufEnter", enableCursorline)

vim.api.nvim_create_autocmd("WinEnter", enableCursorline)

vim.api.nvim_create_autocmd("WinLeave", {
	callback = function()
		vim.opt_local.cursorline = false;
	end
})

vim.opt.updatetime = 50

vim.cmd.colorscheme 'nvimgelion'

require("bufferline").setup({
	options = {

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
