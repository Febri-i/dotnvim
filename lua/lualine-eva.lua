local transparent = "#16161D"
local text = '#ffffff';
local main = '#B194FA' --'#9981d8'
local secondary = '#3e3e5e'
local mainsecond = '#FB5E2A'
local mainsecondfg = text;
local visualbg = '#fb3475'
local commandbg = '#984695'
local replacebg = '#9ef01a'
return {
	normal = {
		a = { bg = main, fg = secondary, gui = "bold" },
		b = { bg = secondary, fg = main },
		c = { bg = transparent, fg = '#ffffff' },
	},
	insert = {
		a = { bg = mainsecond, fg = mainsecondfg, gui = "bold" },
		b = { bg = secondary, fg = text },
	},
	terminal = {
		a = { bg = mainsecond, fg = mainsecondfg, gui = "bold" },
		b = { bg = secondary, fg = mainsecond },
	},
	command = {
		a = { bg = commandbg, fg = text, gui = "bold" },
		b = { bg = secondary, fg = text },
	},
	visual = {
		a = { bg = visualbg, fg = mainsecondfg, gui = "bold" },
		b = { bg = secondary, fg = text },
	},
	replace = {
		a = { bg = replacebg, fg = secondary, gui = "bold" },
		b = { bg = secondary, fg = replacebg },
	},
	inactive = {
		a = { bg = transparent, fg = secondary },
		b = { bg = transparent, fg = secondary, gui = "bold" },
		c = { bg = transparent, fg = secondary },
	}
}
