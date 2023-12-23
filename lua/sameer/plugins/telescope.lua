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
      defaults = {
        layout_strategy = "vertical",
        sorting_strategy = "ascending",
        path_display = { "truncate " },
        file_ignore_patterns = { "node_modules", "__pycache__", "build", "CMakeFiles" },
        layout_config = {
          width = { 0.75, max = 100 },
        },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<CR>"] = actions.select_default,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    local keymap = vim.keymap

    keymap.set("n", "<leader>f<S-TAB>", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
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
      "<leader>fd",
      "<cmd>Telescope current_buffer_fuzzy_find<cr>",
      { desc = "Find string in current buffer" }
    )

    keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
  end,
}
