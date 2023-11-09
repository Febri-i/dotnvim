local function setKeymap(mode, key, action)
	vim.keymap.set(mode, key, action, { noremap = true, silent = true })
end

vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- TELESCOPE
setKeymap("n", "<leader>f", ":Telescope find_files<CR>")
setKeymap("v", "<leader>f", ":Telescope find_files<CR>")
setKeymap("n", "<leader>a", ":bd<CR>")

setKeymap("n", "<C-S-d>", ":TroubleToggle<CR>")
setKeymap("i", "<C-S-d>", "<C-o>:TroubleToggle<CR>")
setKeymap("v", "<C-S-d>", "<ESC>:TroubleToggle<CR>")

setKeymap("n", "[b", ":bprev<cr>")
setKeymap("n", "]b", ":bnext<cr>")

setKeymap("n", "<leader>d", ":Telescope diagnostics<CR>")
setKeymap("v", "<leader>d", "<ESC>:Telescope diagnostics<CR>")

setKeymap("n", "<leader>r", ":Telescope lsp_references<CR>")
setKeymap("v", "<leader>r", "<ESC>:Telescope lsp_references<CR>")

setKeymap("n", "<leader>s", ":Telescope current_buffer_fuzzy_find<CR>")
setKeymap("v", "<leader>s", "<ESC>:Telescope current_buffer_fuzzy_find<CR>")
setKeymap("n", "<F4>", ":UndotreeToggle<CR>")
setKeymap("n", "<leader>t", ":TodoTelescope keywords=FIXME,HACK,TODO<CR>")
setKeymap("v", "<leader>t", "<ESC>:TodoTelescope keywords=FIXME,HACK,TODO<CR>")

setKeymap("n", "<leader>g", ":Telescope live_grep<CR>")

setKeymap("n", "<leader>g", function()
	vim.ui.input({
		prompt = "Grep > ",
	}, function(str)
		if str then
			if #str > 0 then
				require("telescope.builtin").grep_string({ search = str })
			end
		end
	end)
end)
setKeymap("n", "<leader>w", ":Telescope workspaces<CR>")

setKeymap("n", "<leader>e", ":NvimTreeToggl<CR>")
--- TELESCOPE ---

setKeymap("i", "<F2>", vim.lsp.buf.rename)
setKeymap("n", "<F2>", vim.lsp.buf.rename)
setKeymap("v", "<F2>", vim.lsp.buf.rename)
--
-- function _G.__toggle_contextual(vmode)
-- 	local cfg = require("Comment.config"):get()
-- 	local U = require("Comment.utils")
-- 	local Op = require("Comment.opfunc")
-- 	local range = U.get_region(vmode)
-- 	local same_line = range.srow == range.erow
--
-- 	local ctx = {
-- 		cmode = U.cmode.toggle,
-- 		range = range,
-- 		cmotion = U.cmotion[vmode] or U.cmotion.line,
-- 		ctype = same_line and U.ctype.linewise or U.ctype.blockwise,
-- 	}
--
-- 	local lcs, rcs = U.parse_cstr(cfg, ctx)
-- 	local lines = U.get_lines(range)
--
-- 	local params = {
-- 		range = range,
-- 		lines = lines,
-- 		cfg = cfg,
-- 		cmode = ctx.cmode,
-- 		lcs = lcs,
-- 		rcs = rcs,
-- 	}
--
-- 	if same_line then
-- 		Op.linewise(params)
-- 	else
-- 		Op.blockwise(params)
-- 	end
-- end
--
-- setKeymap("i", "<C-/>", "<Esc><cmd>set operatorfunc=v:lua.__toggle_contextual<CR>g@<LEFT>i")
--
setKeymap("n", "<C-a>", ":CodeActionMenu<cr>")

setKeymap("n", "<C-s>", ":w<CR>")
setKeymap("i", "<C-s>", "<C-o>:w<CR>")
setKeymap("v", "<C-s>", ":w<CR>")

-- setKeymap("i", "<D-k>", "<C-o>:m-2<CR>")
-- setKeymap("i", "<D-j>", "<C-o>:m+1<CR>")
setKeymap("n", "<D-k>", ":m-2<CR>")
setKeymap("n", "<D-j>", ":m+1<CR>")
setKeymap("v", "<D-k>", "dkP`[V`]")
setKeymap("v", "<D-j>", "dp`[V`]")
setKeymap("n", "<S-q>", function()
	local donvimtree = require("nvim-tree.view").is_visible()
	vim.cmd [[UndotreeHide]]
	if donvimtree and #vim.api.nvim_list_wins() == 2 then
		vim.cmd [[bd]]
	end
	vim.cmd [[bd]]
end)
setKeymap("n", "<leader>Q", ":bufdo bwipeout<cr>")
-- setKeymap("n", "[t", ":bp<CR>")
-- setKeymap("n", "]t", ":bn<CR>")
setKeymap("n", "<C-j>", "<C-W><C-J>")
setKeymap("n", "<C-k>", "<C-W><C-K>")
setKeymap("n", "<C-l>", "<C-W><C-L>")
setKeymap("n", "<C-h>", "<C-W><C-H>")
