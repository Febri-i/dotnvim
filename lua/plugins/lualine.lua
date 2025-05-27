return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function ()
		require('lualine').setup {
			options = {
				icons_enabled = true,
				theme = 'auto',
				component_separators = { left = '', right = ''},
				section_separators = { left = '', right = ''},
				disabled_filetypes = { 'packer', 'NvimTree' },
				ignore_focus = {},
				always_divide_middle = true,
				always_show_tabline = true,
				globalstatus = false,
				refresh = {
					statusline = 100,
					tabline = 100,
					winbar = 100,
				}
			},
			sections = {
				lualine_a = {'mode'},
				lualine_b = {'branch', 'diff',{
					'diagnostics',
					update_in_insert =true,
					symbols = {error = '  ', warn = '  ', info = '  ', hint = '  '},
				}},
				lualine_c = {{
					'filename',
					symbols = {
						modified = '',      -- Text to show when the file is modified.
						readonly = '',      -- Text to show when the file is non-modifiable or readonly.
						unnamed = '', -- Text to show for unnamed buffers.
						newfile = '󰝒',     -- Text to show for newly created file before first write
					}
				}},
				lualine_x = {'encoding', 'filetype'},
				lualine_y = {'location'},
				lualine_z = {}
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {{'filename', 

				symbols = {
					modified = '',      -- Text to show when the file is modified.
					readonly = '',      -- Text to show when the file is non-modifiable or readonly.
					unnamed = '', -- Text to show for unnamed buffers.
					newfile = '󰝒',     -- Text to show for newly created file before first write
				}
			}},
			lualine_x = {'location'},
			lualine_y = {},
			lualine_z = {}
		},
		tabline = {},
		winbar = {},
		inactive_winbar = {},
		extensions = {}
	}
end
}
