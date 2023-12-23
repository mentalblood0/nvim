return {
  "chrisgrieser/nvim-genghis",
  config = function()
    local keymap = vim.keymap.set
    local genghis = require("genghis")
    keymap("n", "<leader>em", genghis.moveAndRenameFile, { desc = "Move and rename file" })
    keymap("n", "<leader>ea", genghis.createNewFile, { desc = "Create new file" })
    keymap("n", "<leader>ec", genghis.duplicateFile, { desc = "Duplicate file" })
    keymap("n", "<leader>ed", function()
      genghis.trashFile({ trashLocation = "trash" })
    end, { desc = "Trash file" }) -- default: "$HOME/.Trash".
    keymap("x", "<leader>ex", genghis.moveSelectionToNewFile, { desc = "Move selection to new file" })
  end,
}
