vim.g.neovide_confirm_quit = true
vim.g.neovide_cursor_antialiasing = false
vim.g.fontsize = 10.9;
vim.g.neovide_scroll_animation_length = 0.3;
vim.g.neovide_cursor_animate_command_line = false;
local function refreshGuiFont()
	vim.o.guifont = "JetBrainsMono Nerd Font:h" .. vim.g.fontsize
	print("Set font to " .. vim.g.fontsize)
end
refreshGuiFont()

vim.keymap.set("n", "<F11>", function()
	local subtracted = vim.g.fontsize - 0.1;
	if subtracted < 1 then
		subtracted = 1;
	end
	vim.g.fontsize = subtracted;
	refreshGuiFont()
end)



vim.keymap.set("n", "<F12>", function()
	vim.g.fontsize = vim.g.fontsize + 0.1;
	refreshGuiFont()
end)
