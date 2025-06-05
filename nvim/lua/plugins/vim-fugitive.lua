vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>gp", "<cmd>Git push<CR>")

vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>")
vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>")

return {
	{
		"tpope/vim-fugitive",
		event = "VeryLazy",
	}
  }
