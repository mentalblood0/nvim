return {
  "nvim-pack/nvim-spectre",
  pin = true,
  keys = {
    { "<leader>f.", "<cmd>SpectreWithCWD<cr>", mode = { "n" } },
  },
  config = function()
    local spectre = require("spectre")
    spectre.setup({ is_block_ui_break = true })
    vim.keymap.set("n", "<leader>f.", spectre.toggle, {
      desc = "Toggle Spectre",
    })
  end,
}
