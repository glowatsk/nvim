M = {
	{ "tpope/vim-fugitive" },
	{ "tpope/vim-surround" },
	{ "tpope/vim-repeat", event = "VeryLazy" },
	{ "norcalli/nvim-colorizer.lua" },
	{ "windwp/nvim-autopairs", config = true }, -- See `config` under https://github.com/folke/lazy.nvim#-plugin-spec
	{ "numToStr/Comment.nvim", config = true },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "nvim-lua/plenary.nvim", lazy = true },
	{ "nvim-tree/nvim-web-devicons", lazy = true },
	{ "MunifTanjim/nui.nvim", lazy = true },
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			vim.cmd("colorscheme catppuccin")
		end,
	},
	{
		"felipeagc/fleet-theme-nvim",
		dependencies = { "rktjmp/lush.nvim" }, -- lush.nvim is required
		-- config = function()
		-- 	vim.cmd("colorscheme fleet")
		-- end,
	},
}

return M
