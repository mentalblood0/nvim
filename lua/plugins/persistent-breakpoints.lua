return {
	"Weissle/persistent-breakpoints.nvim",
	config = function()
		local pb = require("persistent-breakpoints")
		pb.setup({ load_breakpoints_event = "BufReadPost" })

		local pb_api = require("persistent-breakpoints.api")
		vim.keymap.set("n", "<F9>", pb_api.toggle_breakpoint, {
			desc = "Toggle breakpoint",
		})
	end,
}
