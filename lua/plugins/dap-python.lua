return {
	"mfussenegger/nvim-dap-python",
	config = function()
		local dapy = require("dap-python")
		dapy.setup("python")
		dapy.test_runner = "pytest"

		vim.keymap.set("n", "<leader>dpm", dapy.test_method, {
			desc = "Test python method",
		})
		vim.keymap.set("n", "<leader>dpc", dapy.test_class, {
			desc = "Test python class",
		})
	end,
}
