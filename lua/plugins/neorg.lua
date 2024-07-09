vim.opt.autochdir = true;
return {
	"nvim-neorg/neorg",
	dependencies = {
		-- { dir = "~/Documents/projek/fmath" },
		"luarocks.nvim",
		"nvim-neorg/neorg-telescope",
		-- "3rd/image.nvim"
	},
	lazy         = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
	version      = "*", -- Pin Neorg to the latest stable release
	config       = function()
		require("neorg").setup {
			load = {
				["core.defaults"]               = {
					config = {
						-- disable = { "core.todo-introspector" },
					},
				},
				-- ["core.integrations.image"]     = {},
				-- ["core.latex.renderer"]         = {
				-- },
				["core.concealer"]              = {},
				["core.integrations.telescope"] = {},
				["core.itero"]                  = {},
				["core.promo"]                  = {},
				["core.dirman"]                 = {
					config = {
						workspaces = {
							notes = "~/Documents/Notes/Life",
							utbk = "~/Documents/Notes/Utbk"
						},
						default_workspace = "notes",
					},
				},
				-- ["external.fmath"]              = {},
				["core.keybinds"]               = {
					config = {
						hook = function(keybinds)
							keybinds.remap_event("norg", "i", "<S-Enter>",
								"core.itero.next-iteration")
						end,
					}
				}
			},
		}
	end,
}
