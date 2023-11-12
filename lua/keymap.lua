-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
-- local opt = {noremap = true, silent = true }
local opt = function(desc) return {
        noremap = true,
        silent = true,
        desc = desc
    }
end

-- windows 分屏快捷键
map("n", "<leader>sv", ":vsp<CR>", opt("[S]plit screen [V]ertical"))
map("n", "<leader>sh", ":sp<CR>", opt("[S]plit screen [H]orizontal"))
-- 关闭当前
map("n", "<leader>cc", "<C-w>c", opt("[C]lose [C]urrent split"))
-- 关闭其他
map("n", "<leader>co", "<C-w>o", opt("[C]lose [O]ther splits"))
-- Alt + hjkl  窗口之间跳转
map("n", "<A-h>", "<C-w>h", opt("move to h screen"))
map("n", "<A-j>", "<C-w>j", opt("move to j screen"))
map("n", "<A-k>", "<C-w>k", opt("move to k screen"))
map("n", "<A-l>", "<C-w>l", opt("move to l screen"))

-- visual模式下缩进代码
map("v", "<", "<gv", opt("move line to left"))
map("v", ">", ">gv", opt("move line to right"))

-- 保存
-- map("n", "<C-s>", ":w<CR>", opt("save file"))
-- 关闭
map("n", "q", ":q<CR>", opt("quit"))
