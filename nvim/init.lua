-- Initialization of lazy.nvim
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

require("modules.lazy")
require("modules.nvim-tree")
require("modules.lspzero")
require("modules.trouble")

require("keymaps.terminal")
require("keymaps.fugitive")
require("keymaps.telescope")
require("keymaps.nvim-tree")
require("keymaps.trouble")
require("keymaps.markdown-preview")
require("keymaps.resize")

require("nvim-lspconfig.csharp")
require("nvim-lspconfig.lua")
require("nvim-lspconfig.docker-compose")
require("nvim-lspconfig.docker")
require("nvim-lspconfig.marksman")
require("nvim-lspconfig.rust")
require("nvim-lspconfig.tsserver")

require("settings")
