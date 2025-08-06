
return {
	"nvim-treesitter/nvim-treesitter",
	branch = 'master',
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			highlight = {
				enable = true,
			},
			indent = { enable = true },
			autotag = { enable = true },
			ensure_installed = { "lua", "python", "java" },
			auto_install = false,
		})
	end
}
