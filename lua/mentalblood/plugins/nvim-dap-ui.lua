return {
	"rcarriga/nvim-dap-ui",
	dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
	config = function()
		local dapui = require("dapui")
		dapui.setup()

		local keymap = vim.keymap
		local opts = { noremap = true, silent = true }
		keymap.set("n", "<A-d>", dapui.toggle, opts)
	end,
}
