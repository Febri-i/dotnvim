vim.g.previousSession = nil;
-- vim.api.nvim_create_user_command("dab", function()
-- 	vim.cmd [[bufdo bwipeout]]
-- end, { desc = "Clear all buffer" })
local function cleanup()
	vim.cmd [[LspStop]]
	vim.cmd [[NvimTreeClose]]
	vim.cmd [[UndotreeHide]]
end
return {
	"natecraddock/workspaces.nvim",
	dependencies = { 'natecraddock/sessions.nvim' },
	config       = function()
		local function getSessionDir(name)
			return "~/.vimsession/" .. name .. '.vim'
		end
		local function checkFile(path)
			return vim.fn.filereadable(vim.fn.expand(path)) == 1
		end

		local session = require("sessions")

		vim.api.nvim_create_autocmd("ExitPre", {
			callback = function()
				if vim.g.previousSession then
					cleanup()
					session.save(getSessionDir(vim.g.previousSession), {})
				end
			end
		})
		require("workspaces").setup({
			auto_open = true,
			hooks = {
				open = function(name)
					vim.g.previousSession = name;
					if checkFile(getSessionDir(name)) then
						session.load(getSessionDir(name), { silent = true })
					end
					vim.cmd [[NvimTreeOpen]]
					vim.cmd [[LspStart]]
				end
				,
				open_pre = function(name, path)
					cleanup()
					if vim.g.previousSession then
						session.save(getSessionDir(vim.g.previousSession), {})
					end
					vim.cmd [[bufdo bwipeout]]
				end
			}
		})

		require("telescope").load_extension("workspaces")
	end
}
