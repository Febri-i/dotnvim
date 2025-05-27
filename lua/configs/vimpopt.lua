vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.ignorecase = true;
vim.opt.smartcase = true;
vim.opt.fillchars = { eob = " ", foldopen = "", foldclose = "" }
vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }
vim.wo.wrap = false
vim.wo.linebreak = false
vim.opt.cursorline = true;
vim.opt.swapfile = false
return {};
