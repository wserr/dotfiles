local builtin = require("telescope.builtin")

-- Opens window to search for files
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})

-- Opens window to search for keywords in files
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

-- Opens window to search in currently open buffers
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})

-- Opens window to search help tags
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

vim.keymap.set("n", "<leader>gg", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
