require("nvim-tree").setup({
	open_on_setup = true,
	open_on_setup_file = true,
	open_on_tab = true,
	reload_on_bufenter = true,
	git = {
		ignore = false,
	},
	view = {
		number = true,
		relativenumber = true,
	},
})

vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>tf", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>tff", ":NvimTreeFindFile<CR>")
vim.keymap.set("n", "<leader>tc", ":NvimTreeCollapse<CR>")
