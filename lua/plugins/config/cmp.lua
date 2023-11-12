local cmp = require'cmp'

cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        --   ['<C-Space>'] = cmp.mapping.complete(),
        ["<C-k>"] = cmp.mapping.select_prev_item(), -- 选中下一个候选词
        ["<C-j>"] = cmp.mapping.select_next_item(), -- 选中上一个候选词
        ["<A-,>"] = cmp.mapping.close(), -- 关闭补全窗口
        ["<Tab>"] = cmp.mapping.confirm({ -- 确认补全
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }),
    }),
    sources = cmp.config.sources(
        {
            { name = 'nvim_lsp' },
            { name = 'vsnip' }, -- For vsnip users.
            -- { name = 'luasnip' }, -- For luasnip users.
            -- { name = 'ultisnips' }, -- For ultisnips users.
            -- { name = 'snippy' }, -- For snippy users.
        },
        {
            { name = 'buffer' },
        },
        {
            {name = 'nvim_lsp_signature_help'}
        }
    ),
    -- preselect = cmp.PreselectMode.Item,

})

cmp.setup.cmdline(
":",
{
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources(
        {
            { name = 'path' },
        }, 
        {
            { name = 'cmdline' },
            opts = {
                ignore_cmds = {"Man", "!"}
            }
        }
    )
}
)
-- 命令行搜索时补全
cmp.setup.cmdline(
    {'/', '?'},
    {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
            { name = 'buffer' },
            { name = 'nvim_lsp_document_symbol' },
        }
    }
)


-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')
lspconfig['clangd'].setup {
    cmd = {"clangd", },
    filetypes = {"c", "cpp",},
    capabilities = capabilities
}
lspconfig['cmake'].setup {
    filetypes = {"cmake"},
    capabilities = capabilities
}
lspconfig['pyright'].setup {
    filetypes = {"python"},
    capabilities = capabilities
}
lspconfig['rust_analyzer'].setup {
    settings = {
        ['rust-analyzer'] = {
            diagnostics = {
                enable = false;
            }
        }
    },
    capabilities = capabilities
}
