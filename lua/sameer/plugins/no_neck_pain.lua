return {
  "shortcuts/no-neck-pain.nvim",
  config = function()
    local no_neck_pain = require("no-neck-pain")
    no_neck_pain.setup({
      width = 90,
      autocmds = {
        enableOnVimEnter = true,
      },
      mappings = {
        enabled = true,
      },
    })
  end,
}
