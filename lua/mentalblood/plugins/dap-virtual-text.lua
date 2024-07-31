return {
	"https://codeberg.org/mentalblood/nvim-dap-virtual-text",
	dependencies = { "https://codeberg.org/mentalblood/nvim-treesitter" },
	config = function()
		local vt = require("nvim-dap-virtual-text")
		vt.setup()
	end,
}
