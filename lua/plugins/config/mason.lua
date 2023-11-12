-- 这里顺序不能换
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "clangd", "cmake", "pyright", "rust_analyzer",
    }
})


