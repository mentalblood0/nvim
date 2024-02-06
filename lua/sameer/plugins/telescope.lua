return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			pickers = {
				colorscheme = {
					enable_preview = true,
				},
			},
			defaults = {
				layout_strategy = "vertical",
				sorting_strategy = "ascending",
				path_display = { "truncate " },
				file_ignore_patterns = { "node_modules", "__pycache__", "build", "CMakeFiles" },
				layout_config = {
					width = { 0.9, max = 124 },
				},
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<CR>"] = actions.select_default + actions.center,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		local keymap = vim.keymap

		keymap.set(
			"n",
			"<leader>f<S-TAB>",
			"<cmd>Telescope grep_string<cr>",
			{ desc = "Find string under cursor in cwd" }
		)
		keymap.set("n", "<leader>f<TAB>", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		keymap.set(
			"n",
			"<leader>fa",
			"<cmd>Telescope find_files hidden=true<cr>",
			{ desc = "Find files including hidden files" }
		)
		keymap.set("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "Find symbols in the file" })
		keymap.set(
			"n",
			"<leader>fS",
			"<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
			{ desc = "Find symbols in workspace" }
		)
		keymap.set(
			"n",
			"<leader>fd",
			"<cmd>Telescope current_buffer_fuzzy_find<cr>",
			{ desc = "Find string in current buffer" }
		)

		keymap.set("n", "<leader>fgc", "<cmd>Telescope git_commits<cr>", { desc = "Find commits" })
		keymap.set(
			"n",
			"<leader>fgC",
			"<cmd>Telescope git_bcommits<cr>",
			{ desc = "Find commits related to current buffer" }
		)
		keymap.set("n", "<leader>fgs", "<cmd>Telescope git_status<cr>", { desc = "Find changes since previous commit" })
		keymap.set("n", "<leader>fgb", "<cmd>Telescope git_branches<cr>", { desc = "Find branches" })

		keymap.set(
			"n",
			"<leader>flr",
			"<cmd>Telescope lsp_references<cr>",
			{ desc = "Find LSP references for word under cursor" }
		)
		keymap.set(
			"n",
			"<leader>fld",
			"<cmd>Telescope lsp_definitions<cr>",
			{ desc = "Find LSP definitions for word under cursor" }
		)
		keymap.set(
			"n",
			"<leader>flt",
			"<cmd>Telescope lsp_type_definitions<cr>",
			{ desc = "Find LSP type definitions for word under cursor" }
		)

		keymap.set("n", "<leader>fc", "<cmd>Telescope neoclip<cr>", { desc = "Find clip" })
		keymap.set("n", "<leader>ft", "<cmd>Telescope colorscheme<cr>", { desc = "Find colorscheme" })
		keymap.set("n", "<leader>fe", "<cmd>Telescope diagnostics<cr>", { desc = "Find diagnostics" })
		keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })

		local file_exists = function(file)
			local f = io.open(file, "rb")
			if f then
				f:close()
			else
				print(file .. " not exists")
			end
			return f ~= nil
		end

		local lines_from = function(file)
			if not file_exists(file) then
				return {}
			end
			local lines = {}
			for line in io.lines(file) do
				lines[#lines + 1] = line
			end
			return lines
		end

		local add_files_to_buffers = function()
			local initial = vim.fn.expand("%")
			local root = vim.fn.getcwd()

			local paths_expressions = lines_from(root .. "/nvim_open.txt")
			local paths = {}
			for _, _e in pairs(paths_expressions) do
				local e = root .. "/" .. _e
				print("searching files matching expression " .. e)
				for _, p in pairs(vim.split(vim.fn.glob(e), "\n", { trimempty = true })) do
					if vim.fn.isdirectory(p) == 0 and string.find(p, "CMakeFiles", 1, true) == nil then
						print("found file matching expression " .. e .. " : " .. p)
						paths[#paths + 1] = p
					end
				end
			end

			for _, p in pairs(paths) do
				vim.cmd.edit(p)
			end

			vim.cmd.edit(initial)
		end
		keymap.set("n", "<leader>ff", add_files_to_buffers, { desc = "Add all files to buffers" })
	end,
}
