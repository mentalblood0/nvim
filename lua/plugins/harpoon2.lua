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
			local k
			if i < 10 then
				k = tostring(i)
			else
				k = "0"
			end
			vim.keymap.set("n", k, function()
				harpoon:list():select(i)
				vim.api.nvim_feedkeys("zz", "n", false)
			end)
		end
	end,
}
