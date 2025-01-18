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

require("plugins")
require("keymaps")
require("settings")
require("lsp")
require("theme")
require("cmp-settings")

require("functions.tempfile")
require("functions.attach_client_to_buffer")

require("plugins.telescope-file-browser")
require("plugins.trouble")

require("langservers.lua")
require("langservers.terraform")
require("langservers.marksman")
require("langservers.csharp")
require("langservers.docker-compose")
require("langservers.docker")
require("langservers.rust")
require("langservers.ts_ls")
