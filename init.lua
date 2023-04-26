local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("options")
require("lazy").setup("plugins", opts)

local function map(mode, lhs, rhs, opts)
	opts = opts or {}
	opts.silent = opts.silent ~= false
	vim.keymap.set(mode, lhs, rhs, opts)
end

map("v", "<", "<gv")
map("v", ">", ">gv")
map(
	"n",
	"<leader>t",
	'<cmd>lua vim.diagnostic.open_float(0, {scope="line", border = "single", })<CR>',
	{ noremap = true, silent = true }
)
map(
	"n",
	"<leader>t",
	'<cmd>lua vim.diagnostic.open_float(0, {scope="line", border = "single", })<CR>',
	{ noremap = true, silent = true }
)
