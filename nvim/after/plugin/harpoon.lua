local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local map = vim.keymap.set

map("n", "<leader>;", mark.add_file, { desc = "add current file to harpoon" })
map("n", "<C-e>", ui.toggle_quick_menu)

map("n", "<leader>h", ui.nav_prev, {desc = "go to next harpoon file"})
map("n", "<leader>l", ui.nav_next, {desc = "go to previous harpoon file"})
