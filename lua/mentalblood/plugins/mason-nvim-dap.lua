return {
	"https://codeberg.org/mentalblood/mason-nvim-dap.nvim",
	config = function()
		local masondap = require("mason-nvim-dap")
		masondap.setup({
			handlers = {
				function(config)
					masondap.default_setup(config)
				end,
				python = function(config)
					config.adapters = { type = "executable", command = "py", args = { "-m", "debugpy.adapter" } }
					masondap.default_setup(config)
				end,
			},
		})
	end,
}
