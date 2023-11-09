local M = {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	build = ":Copilot auth",
	opts = {
		suggestion = { enabled = false, auto_trigger = true },
		panel = { enabled = false, auto_refresh = true, open = "<S-`>" },
		filetypes = {
			markdown = true,
			help = true,
		},
	},
}

return M
