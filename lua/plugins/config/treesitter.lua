require("nvim-treesitter.configs").setup({
    ensure_installed = { 
        "c", "cpp", "cmake",
        "glsl", "hlsl", "rust", 
        "python", "lua",
    },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = false },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<CR>",
            node_decremental = "<BS>",
            node_incremental = "<CR>",
            scope_incremental = "<leader>ft",
        }
    }
})

vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- vim.wo.foldlevel= 1
