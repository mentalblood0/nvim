return {
	"theHamsta/nvim-dap-virtual-text",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		local vt = require("nvim-dap-virtual-text")
		vt.setup()
	end,
}
