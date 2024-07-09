vim.g.mapleader = " "
vim.g.maplocalleader = " "
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({ { import = "plugins" } })



-- Border shit
vim.api.nvim_set_hl(0, 'FloatBorder', { fg = "#27a1b9", bg = "#1a1b26" });
-- vim.api.nvim_set_hl(0, 'NormalFloat', { fg = "#c0caf5", bg = "#1a1b26" });
