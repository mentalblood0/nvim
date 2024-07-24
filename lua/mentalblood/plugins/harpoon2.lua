return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end)
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		for i = 1, 10 do
			vim.keymap.set("n", tostring(i), function()
				harpoon:list():select(i)
				vim.api.nvim_feedkeys("zz", "n", false)
			end)
		end
	end,
}
