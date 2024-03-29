-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Tab for finding tab pairs
keymap.set("n", "<tab>", "%", {})
keymap.set("v", "<tab>", "%", {})

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- colours
keymap.set("n", "<leader>cc", "<cmd>colorscheme<CR>", { desc = "Display current colour scheme" })
-- keymap.set("n", "<leader>cn", "<cmd>colorscheme nordic<CR>", { desc = "NORDIC" })
-- keymap.set("n", "<leader>cm", "<cmd>colorscheme moonlight<CR>", { desc = "MOONLIGHT" })
-- keymap.set("n", "<leader>ck", "<cmd>colorscheme monokai<CR>", { desc = "MONOKAI" })
-- keymap.set("n", "<leader>cd", "<cmd>colorscheme material<CR>", { desc = "MATERIAL" })
-- keymap.set("n", "<leader>ct", "<cmd>colorscheme tokyonight<CR>", { desc = "TOKYONIGHT" })

keymap.set("n", "<leader>q", "<cmd>bdelete!<CR>", { desc = "Close the current active buffer tab" })

-- Zen and Twilight
keymap.set("n", "<leader>ez", "<cmd>ZenMode<CR>", { desc = "Zen Mode" })
keymap.set("n", "<leader>et", "<cmd>Twilight<CR>", { desc = "Twilight" })

-- search and replace
keymap.set("n", "<leader>rr", "<cmd>%s/")
