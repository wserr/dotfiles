local config = {
	actions_paths = {os.getenv("XDG_CONFIG_HOME").."/nvim/actions.json" },
}

require("chatgpt").setup(config)
