vim.g.mapleader = " "

local keymap = vim.keymap

-- NvimTree
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle file explorer" }) 
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<cr>", { desc = "Toggle file explorer on current file" })
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<cr>", { desc = "Collapse file explorer" }) 
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<cr>", { desc = "Refresh file explorer" })

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>", { desc = "Telecospe file files" })
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Telescope live grep" })
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Telescope buffers" })
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Telescope help tags" })
