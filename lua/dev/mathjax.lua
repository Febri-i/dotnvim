--123456789
--123456789
local buf = vim.api.nvim_get_current_buf();
local ns = vim.api.nvim_create_namespace("ILOVEPUSSY}");
-- if EXT ~= nil then
-- 	vim.api.nvim_buf_del_extmark(buf, ns, EXT)
-- end

if EXTS ~= nil then
	for i, x in pairs(EXTS) do
		vim.api.nvim_buf_del_extmark(buf, x.ns, x.id)
	end
	EXTS = nil;
end

local function setup_extmark()
	local start_col = 2;
	local start_row = 1;
	local str = "test";
	local end_col = 5;
	local end_row = 1;
	local padding = (" "):rep(start_col);

	EXTS = {};
	local ext1 = vim.api.nvim_buf_set_extmark(buf, ns, start_row, start_col, {
		end_col = end_col,
		end_row = end_row,
		virt_text = { { ("") } },
		virt_text_pos = "overlay",
		conceal = ""
	})

	table.insert(EXTS, { id = ext1, ns = ns });

	local ext2 = vim.api.nvim_buf_set_extmark(buf, ns, start_row, start_col, {
		end_row = end_row,
		end_col = end_col,
		conceal = "",
		virt_text_pos = "inline",
		virt_text = { { str } },
		virt_lines = { { { padding .. "top1" } }, { { padding .. "top2" } } },
		virt_lines_above = true
	})

	table.insert(EXTS, { id = ext2, ns = ns });

	local ext3 = vim.api.nvim_buf_set_extmark(buf, ns, start_row, start_col, {
		end_row = end_row,
		end_col = end_col,
		conceal = "",
		virt_text_pos = "overlay",
		virt_text = { { "" } },
		virt_lines = { { { padding .. "btm1" } }, { { padding .. "btm2" } } },
	});

	table.insert(EXTS, { id = ext3, ns = ns });
end

setup_extmark();

-- local ext = vim.api.nvim_buf_set_extmark(buf, ns, 0, 3, {
--
-- 	virt_text = { { "xxxxxx" } },
-- 	end_col = 8,
-- 	end_row = 0,
-- 	virt_text_pos = "inline",
-- 	conceal = "",
-- 	virt_lines = { { { "possey" } } }
-- })
--
-- -- vim.api.nvim_buf_del_extmark(buf, ns, ext);
--
if AUCMD ~= nil then
	vim.api.nvim_del_autocmd(AUCMD);
	AUCMD = nil;
end
local isshown = true;
AUCMD = vim.api.nvim_create_autocmd({ "CursorMovedI", "CursorMoved" }, {
	callback = function()
		local pos = vim.api.nvim_win_get_cursor(vim.api.nvim_get_current_win())
		if pos[1] == 2 then
			if EXTS ~= nil then
				for i, x in pairs(EXTS) do
					vim.api.nvim_buf_del_extmark(buf, x.ns, x.id)
				end
			end
			isshown = false;
		elseif not isshown then
			isshown = true;
			setup_extmark()
		end
	end
})
