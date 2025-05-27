return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets", "onsails/lspkind.nvim" },
	version = "1.*",
	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		signature = { enabled = true, window = { show_documentation = false } },
		keymap = {
			preset = "none",
			["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
			["<C-e>"] = { "hide", "fallback" },
			["<CR>"] = { "accept", "fallback" },

			["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
			["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },

			["<Up>"] = { "select_prev", "fallback" },
			["<Down>"] = { "select_next", "fallback" },
			["<C-p>"] = { "select_prev", "fallback_to_mappings" },
			["<C-n>"] = { "select_next", "fallback_to_mappings" },

			["<C-b>"] = { "scroll_documentation_up", "fallback" },
			["<C-f>"] = { "scroll_documentation_down", "fallback" },

			["<C-a>"] = { "show_signature", "hide_signature", "fallback" },
		},

		appearance = {
			nerd_font_variant = "mono",
		},

		completion = {
			documentation = { auto_show = false },
			menu = {

				winhighlight = "Normal:BlinkCmpMenu,FloatBorder:BlinkCmpMenuBorder,CursorLine:CustomCursorLine,Search:None",
				draw = {
					padding = 1,
					gap = 1,
					cursorline_priority = 0,
					columns = { { "kind_icon" }, { "label", "label_description", gap = 1 }, { "kind" } },
					components = {
						kind = {
							text = function(ctx)
								return "(" .. ctx.kind .. ")"
							end,
							-- highlight = function(ctx)
							-- 	return "String"
							-- end,
						},
						kind_icon = {
							text = function(ctx)
								local icon = ctx.kind_icon
								if ctx.kind == "Color" and ctx.item.client_name == "tailwindcss" then
									return ctx.kind_icon
								end
								icon = require("lspkind").symbolic(ctx.kind, {
									mode = "symbol",
								})
								-- end

								return icon .. ctx.icon_gap
							end,
						},
					},
				},
			},
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
			providers = {
				lsp = {
					name = "lsp",
					enabled = true,
					module = "blink.cmp.sources.lsp",
					min_keyword_length = 1,
					score_offset = 90,
				},
				path = {
					name = "Path",
					module = "blink.cmp.sources.path",
					score_offset = 25,
					fallbacks = { "snippets", "buffer" },
					opts = {
						trailing_slash = false,
						label_trailing_slash = true,
						get_cwd = function(context)
							return vim.fn.expand(("#%d:p:h"):format(context.bufnr))
						end,
						show_hidden_files_by_default = true,
					},
				},
				buffer = {
					name = "Buffer",
					enabled = true,
					max_items = 3,
					module = "blink.cmp.sources.buffer",
					min_keyword_length = 2,
					score_offset = 15,
				},
				snippets = {
					name = "snippets",
					enabled = true,
					max_items = 15,
					module = "blink.cmp.sources.snippets",
					score_offset = 85,
				},
			},
		},

		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	config = function(_, opts)
		require("blink.cmp").setup(opts)
		vim.api.nvim_set_hl(0, "CustomCursorLine", { bg = "#3b3f4c" })
	end,
	opts_extend = { "sources.default" },
}
