-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",
-- 设置空格键为<leader>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opt = {
    noremap = true,
    silent = true
}

-- 语法格式
-- map('模式', '按键', '映射为', 'options')

-- 行首行尾移动
map("v", "L", "$", opt)
map("v", "H", "0", opt)
map("n", "L", "$", opt)
map("n", "H", "0", opt)
map("i", "<A-h>", "<ESC>I", {
    noremap = false,
    silent = true
})
map("i", "<A-l>", "<ESC>A", {
    noremap = false,
    silent = true
})

-- 设置Ctrl + s 进行保存
map("n", "<C-s>", ":w<CR>", opt)
map("i", "<C-s>", "<ESC>:w<CR>", opt)
-- 设置 ctrl+z进行撤销
map("n", "<C-z>", "u", opt)
map("i", "<C-z>", "<ESC>u", opt)

-- 取消 s 默认功能
map("n", "s", "", opt)
-- windows 分屏快捷键
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
-- 关闭当前
map("n", "sc", "<C-w>c", opt)
-- 关闭其他
map("n", "so", "<C-w>o", opt)
-- Ctrl + hjkl  窗口之间跳转
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)
-- 左右比例控制
map("n", ">", ":vertical resize -2<CR>", opt)
map("n", "<", ":vertical resize +2<CR>", opt)
map("n", "s,", ":vertical resize -20<CR>", opt)
map("n", "s.", ":vertical resize +20<CR>", opt)
-- 上下比例
map("n", "sj", ":resize +10<CR>", opt)
map("n", "sk", ":resize -10<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Up>", ":resize -2<CR>", opt)
-- 等比例
map("n", "s=", "<C-w>=", opt)
-- Terminal相关
map("n", "<leader>t", ":sp | terminal<CR>", opt)
map("n", "<leader>vt", ":vsp | terminal<CR>", opt)
map("t", "<Esc>", "<C-\\><C-n>", opt)
map("t", "<A-h>", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<A-j>", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<A-k>", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<A-l>", [[ <C-\><C-N><C-w>l ]], opt)
-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)
-- visual block模式快捷键
map("n", "vv", "<C-v>", opt)
-- 在visual 模式里粘贴不要复制
map("v", "p", '"_dP', opt)

-- 退出
map("n", "q", ":q<CR>", opt)
map("n", "qq", ":q!<CR>", opt)
map("n", "Q", ":qa!<CR>", opt)

-- nvim-tree插件相关快捷键
-- 插件快捷键
local pluginKeys = {}

-- treesitter 折叠
map("n", "zf", ":foldclose<CR>", opt)
map("n", "zo", ":foldopen<CR>", opt)

-- nvim-tree
-- ; + e 键打开关闭tree
map("n", ";e", ":NvimTreeToggle<CR>", opt)
-- 列表快捷键
pluginKeys.nvimTreeList = { -- 打开文件或文件夹
{
    key = {"<CR>", "o", "<2-LeftMouse>"},
    action = "edit"
}, -- v分屏打开文件
{
    key = "v",
    action = "vsplit"
}, -- h分屏打开文件
{
    key = "h",
    action = "split"
}, -- Ignore (node_modules)
{
    key = "i",
    action = "toggle_ignored"
}, -- Hide (dotfiles)
{
    key = ".",
    action = "toggle_dotfiles"
}, {
    key = "R",
    action = "refresh"
}, -- 文件操作
{
    key = "a",
    action = "create"
}, {
    key = "d",
    action = "remove"
}, {
    key = "r",
    action = "rename"
}, {
    key = "x",
    action = "cut"
}, {
    key = "c",
    action = "copy"
}, {
    key = "p",
    action = "paste"
}, {
    key = "y",
    action = "copy_name"
}, {
    key = "Y",
    action = "copy_path"
}, {
    key = "gy",
    action = "copy_absolute_path"
}, {
    key = "I",
    action = "toggle_file_info"
}, {
    key = "n",
    action = "tabnew"
}, -- 进入下一级
{
    key = {"]"},
    action = "cd"
}, -- 进入上一级
{
    key = {"["},
    action = "dir_up"
}}

-- bufferline 插件相关快捷键
-- 左右Tab切换
map("n", "<leader><leader><tab>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<leader><tab>", ":BufferLineCycleNext<CR>", opt)
-- 关闭
-- "moll/vim-bbye"
map("n", "<C-w>", ":Bdelete!<CR>", opt)
map("n", "<leader>q", ":Bdelete!<CR>", opt)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)

-- telescope插件相关快捷键
-- 查找文件
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
-- 全局搜索
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)

--local actions = require "telescope.actions"

pluginKeys.telescopeList = {
    i = {
        -- 上下移动
        ["<C-n>"] = "move_selection_next",
        ["<C-p>"] = "move_selection_previous",
        ["<Down>"] = "move_selection_next",
        ["<Up>"] = "move_selection_previous",
        -- 历史记录
        ["<C-j>"] = "cycle_history_next",
        ["<C-k>"] = "cycle_history_prev",
        -- 关闭窗口
        ["<C-c>"] = "close",
        -- 预览窗口上下滚动
        ["<C-u>"] = "preview_scrolling_up",
        ["<C-d>"] = "preview_scrolling_down"
    }
}

-- 代码注释插件
-- see ./lua/plugin-config/comment.lua
pluginKeys.comment = {
    -- Normal 模式快捷键
    toggler = {
        line = "gcc", -- 行注释
        block = "gbc" -- 块注释
    },
    -- Visual 模式
    opleader = {
        line = "gc",
        bock = "gb"
    }
}

-- ctrl + /
map("n", "<C-_>", "gcc", {
    noremap = false
})
map("v", "<C-_>", "gcc", {
    noremap = false
})

-- lsp 回调函数快捷键设置
pluginKeys.mapLSP = function(mapbuf)
    -- 使用插件进行悬浮窗重命名
    -- rename
    -- mapbuf("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)
    mapbuf("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opt)
    -- code action
    -- mapbuf("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opt)
    mapbuf("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opt)
    -- go xx
    -- mapbuf("n", "gD", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
    mapbuf("n", "ge", "<cmd>Lspsaga preview_definition<CR>", opt)
    -- mapbuf("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
    mapbuf("n", "gh", "<cmd>Lspsaga hover_doc<CR>", opt)
    mapbuf("n", "gd", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
    mapbuf("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
    -- mapbuf("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
    mapbuf("n", "gr", "<cmd>Lspsaga lsp_finder<CR>", opt)
    -- diagnostic
    --[[
    mapbuf("n", "ep", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)
    mapbuf("n", "ek", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
    mapbuf("n", "ej", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)
    ]] --
    mapbuf("n", "es", "<cmd>Lspsaga show_line_diagnostics<CR>", opt)
    mapbuf("n", "ej", "<cmd>Lspsaga diagnostic_jump_next<CR>", opt)
    mapbuf("n", "ek", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opt)
    mapbuf("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opt)
    -- mapbuf("i","<tab>", "<CR>", opt)
    -- mapbuf("i", "<tab>", mapbuf.mapping.complete(), opt)
    -- 没用到
    -- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
    -- mapbuf("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opt)
    -- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
    -- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
    -- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
    -- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
end

-- nvim-cmp 自动补全
pluginKeys.cmp = function(cmp)
    local feedkey = function(key, mode)
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
    end

    local has_words_before = function()
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and
                   vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") ==
                   nil
    end

    return {
        -- 出现补全
        ["<C-i>"] = cmp.mapping(cmp.mapping.complete(), {"i", "c"}),
        -- 取消
        -- ["<ESC>"] = cmp.mapping({
        --     i = cmp.mapping.close(),
        --     c = cmp.mapping.close()
        -- }),
        -- 上一个
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        -- 下一个
        ["<C-n>"] = cmp.mapping.select_next_item(),
        -- 确认
        ["<TAB>"] = cmp.mapping.confirm({
            select = true,
            behavior = cmp.ConfirmBehavior.Replace
        }), --[[(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif has_words_before() then
                cmp.complete()
            else
                fallback()
            end
        end, {"i", "c"}),]]
        -- 如果窗口内容太多，可以滚动
        ["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), {"i", "c"}),
        ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), {"i", "c"}),

        -- 自定义代码段跳转到下一个参数
        ["<C-l>"] = cmp.mapping(function(_)
            if vim.fn["vsnip#available"](1) == 1 then
                feedkey("<Plug>(vsnip-expand-or-jump)", "")
            end
        end, {"i", "s"}),

        -- 自定义代码段跳转到上一个参数
        ["<C-h>"] = cmp.mapping(function()
            if vim.fn["vsnip#jumpable"](-1) == 1 then
                feedkey("<Plug>(vsnip-jump-prev)", "")
            end
        end, {"i", "s"})

        -- Super Tab
        --[=[
            ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif vim.fn["vsnip#available"](1) == 1 then
                feedkey("<Plug>(vsnip-expand-or-jump)", "")
            elseif has_words_before() then
                cmp.complete()
            else
                fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
            end
        end, {"i", "s"}),

        ["<S-Tab>"] = cmp.mapping(function()
            if cmp.visible() then
                cmp.select_prev_item()
            elseif vim.fn["vsnip#jumpable"](-1) == 1 then
                feedkey("<Plug>(vsnip-jump-prev)", "")
            end
        end, {"i", "s"})
        ]=] --
        -- end of super Tab
    }
end

-- 自定义 toggleterm 3个不同类型的命令行窗口
-- <leader>ta 浮动
-- <leader>tb 右侧
-- <leader>tc 下方
-- 特殊lazygit 窗口，需要安装lazygit
-- <leader>tg lazygit
pluginKeys.mapToggleTerm = function(toggleterm)
    vim.keymap.set({"n", "t"}, "<leader>tf", toggleterm.toggleA)
    vim.keymap.set({"n", "t"}, "<leader>tr", toggleterm.toggleB)
    vim.keymap.set({"n", "t"}, "<leader>td", toggleterm.toggleC)
    vim.keymap.set({"n", "t"}, "<leader>tg", toggleterm.toggleG)
end


return pluginKeys
