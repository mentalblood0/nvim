return {
	"numToStr/FTerm.nvim",
	config = function()
		local keymap = vim.keymap
		local opts = { noremap = true, silent = true }
		local fterm = require("FTerm")
		fterm.setup({
			cmd = "powershell.exe",
			dimensions = {
				height = 1.0,
				width = 1.0,
			},
			border = "none",
		})
		keymap.set("n", "<A-i>", fterm.toggle, opts)
		keymap.set("t", "<A-i>", fterm.toggle, opts)
	end,
}
