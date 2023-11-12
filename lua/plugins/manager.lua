require("lazy").setup(
    {
        "windwp/nvim-autopairs",
        "cpea2506/one_monokai.nvim", -- 主题
        "akinsho/nvim-toggleterm.lua", -- terminal
        "numToStr/Comment.nvim", -- 快速注释
        "simrat39/symbols-outline.nvim", -- 代码大纲
        "lilibyte/tabhula.nvim", -- tabout 
        { -- 快速跳转
            "ggandor/leap.nvim",
            dependencies = "tpope/vim-repeat"
        },
        -- "Shatur/neovim-tasks", -- tasks 
        
        { -- 文件浏览器
            "nvim-tree/nvim-tree.lua",
            dependencies = "kyazdani42/nvim-web-devicons",
        },
        { -- 底部状态栏
            "nvim-lualine/lualine.nvim",
            dependencies = "kyazdani42/nvim-web-devicons",
        },
        { -- 顶部状态栏
            "akinsho/bufferline.nvim",
            dependencies = "kyazdani42/nvim-web-devicons",
        },
        { -- 查找
            "nvim-telescope/telescope.nvim",
            tag = "0.1.4",
            dependencies = {
                "nvim-lua/plenary.nvim", -- required
                "BurntSushi/ripgrep", -- live_grep grep_string find_files
                "kyazdani42/nvim-web-devicons",
                {
                    "nvim-telescope/telescope-fzf-native.nvim",
                    build = "cmake -S . -B build -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
                },
                "nvim-treesitter/nvim-treesitter",
            },
        },

        "lewis6991/gitsigns.nvim", -- git图标
        { -- git插件
            "NeogitOrg/neogit",
            dependencies = {
                "nvim-lua/plenary.nvim",         -- required
                "nvim-telescope/telescope.nvim", -- optional
                "sindrets/diffview.nvim",        -- optional
                "ibhagwan/fzf-lua",              -- optional
            },
            config = true
        },

        { -- which key
            "folke/which-key.nvim",
            init = function()
                vim.o.timeout = true
                vim.o.timeoutlen = 300
            end,
        },
        
        { -- 语法高亮
            "nvim-treesitter/nvim-treesitter",
            build = ":TSUpdate",
        },

        { -- lsp
            "neovim/nvim-lspconfig",
            dependencies = "nvim-lua/lsp-status.nvim",
        },
        { -- lsp
            "williamboman/nvim-lsp-installer",
            dependencies = "neovim/nvim-lspconfig",
        },
        -- lsp
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",

        -- cmp
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer", -- 补全buffer words
        "hrsh7th/cmp-path", -- 补全路径
        "hrsh7th/cmp-cmdline", -- 补全命令行
        "hrsh7th/cmp-nvim-lsp-signature-help", -- 函数签名提示
        "hrsh7th/cmp-nvim-lsp-document-symbol", -- 使用命令行搜索时输入"/@"或者"?@"可以搜索函数名等（大纲内容）
        -- for vsnip user.
        "hrsh7th/cmp-vsnip",
        "hrsh7th/vim-vsnip",
    }
)

require("plugins.config.autopairs")
require("plugins.config.bufferline")
require("plugins.config.cmp")
require("plugins.config.comment")
require("plugins.config.git")
require("plugins.config.lspconfig")
require("plugins.config.lualine")
require("plugins.config.mason")
require("plugins.config.nvim-tree")
require("plugins.config.symbols")
require("plugins.config.tabhula")
require("plugins.config.telescope")
require("plugins.config.terminal")
require("plugins.config.theme")
require("plugins.config.treesitter")
require("plugins.config.which-key")
require("plugins.config.leap-nvim")

-- require("plugins.config.tasks")
