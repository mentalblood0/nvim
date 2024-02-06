return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	requires = { { "nvim-lua/plenary.nvim" } },
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():append()
		end)
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		vim.keymap.set("n", "1", function()
			harpoon:list():select(1)
		end)
		vim.keymap.set("n", "2", function()
			harpoon:list():select(2)
		end)
		vim.keymap.set("n", "3", function()
			harpoon:list():select(3)
		end)
		vim.keymap.set("n", "4", function()
			harpoon:list():select(4)
		end)
		vim.keymap.set("n", "5", function()
			harpoon:list():select(5)
		end)
		vim.keymap.set("n", "6", function()
			harpoon:list():select(6)
		end)
		vim.keymap.set("n", "7", function()
			harpoon:list():select(7)
		end)
		vim.keymap.set("n", "8", function()
			harpoon:list():select(8)
		end)
		vim.keymap.set("n", "9", function()
			harpoon:list():select(9)
		end)
		vim.keymap.set("n", "0", function()
			harpoon:list():select(10)
		end)
	end,
}
