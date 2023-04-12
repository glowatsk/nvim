local M = {
	"ThePrimeagen/harpoon",
	cmd = "Harpoon",
	keys = {
		{
			"<leader>a",
			function()
				require("harpoon.mark").add_file()
			end,
		},
		{
			"<C-m>",
			function()
				require("harpoon.ui").toggle_quick_menu()
			end,
		},
	},
}

return M
