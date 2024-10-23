return {
	"shortcuts/no-neck-pain.nvim",
	config = function()
		local nnp = require("no-neck-pain")
		nnp.setup({
			width = 124,
			autocmds = {
				enableOnVimEnter = false,
			},
			mappings = {
				enabled = true,
			},
		})
	end,
}
