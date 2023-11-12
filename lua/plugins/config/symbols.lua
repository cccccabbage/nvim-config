require("symbols-outline").setup()

vim.api.nvim_set_keymap("n", "<C-A-b>", ":SymbolsOutline<CR>", {noremap = true, silent = true})