return {
	"mfussenegger/nvim-dap-python",
	config = function()
		local dapy = require("dap-python")
		dapy.setup("py")
		dapy.test_runner = "pytest"
	end,
}
