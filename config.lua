-- --[[
--  THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
--  `lvim` is the global options object
-- ]]

-- -- Enable powershell as your default shell
-- vim.opt.shell = "pwsh.exe -NoLogo"
-- vim.opt.shellcmdflag =
--   "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
-- vim.cmd [[
-- 		let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
-- 		let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
-- 		set shellquote= shellxquote=
--   ]]

-- -- Set a compatible clipboard manager
-- vim.g.clipboard = {
--   copy = {
--     ["+"] = "win32yank.exe -i --crlf",
--     ["*"] = "win32yank.exe -i --crlf",
--   },
--   paste = {
--     ["+"] = "win32yank.exe -o --lf",
--     ["*"] = "win32yank.exe -o --lf",
--   },
-- }

-- -- general
-- lvim.log.level = "warn"
-- lvim.format_on_save = false
-- lvim.colorscheme = "onedarker"
-- -- to disable icons and use a minimalist setup, uncomment the following
-- -- lvim.use_icons = false

-- -- keymappings [view all the defaults by pressing <leader>Lk]
-- lvim.leader = "space"
-- -- add your own keymapping
-- lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- lvim.keys.normal_mode["<C-z>"] = "u"
-- lvim.keys.insert_mode["<C-z>"] = "<ESC>u"
-- lvim.keys.insert_mode["<C-s>"] = "<ESC>:w<CR>"

-- lvim.keys.normal_mode["qq"] = ":q!<CR>"
-- lvim.keys.normal_mode["q"] = ":q<CR>"
-- lvim.keys.normal_mode["Q"] = ":qa!<CR>"

-- lvim.keys.normal_mode["<A-o>"] = ":ClangdSwitchSourceHeader<CR>"
-- lvim.keys.insert_mode["<A-o>"] = "<ESC>:ClangdSwitchSourceHeader<CR>"

-- lvim.keys.normal_mode["<C-p>"] = "<cmd>Telescope find_files<CR>"
-- lvim.keys.normal_mode[";e"] = "<cmd>NvimTreeToggle<CR>"

-- lvim.keys.normal_mode["<leader><leader><tab>"] = "<cmd>BufferLineCyclePrev<cr>"
-- lvim.keys.normal_mode["<leader><tab>"] = "<cmd>BufferLineCycleNext<cr>"
-- -- todo 
-- lvim.keys.normal_mode["<C-//>"] = "<Plug>(comment_toggle_linewise_current)"

-- lvim.keys.normal_mode["vv"] = "<C-v>"
-- --lvim.keys.normal_mode["<A-j>"] = "<S-j>"
-- --lvim.keys.normal_mode["<A-j>"] = "<S-j>"
-- -- 分屏窗口切换
-- -- lvim.keys.normal_mode["<A-h"] = "<C-h>"
-- -- lvim.keys.normal_mode["<A-l"] = "<C-l>"
-- -- lvim.keys.normal_mode["<A-j"] = "<C-j>"
-- -- lvim.keys.normal_mode["<A-k"] = "<C-k>"

-- -- 不可见字符的显示，这里只把空格显示为一个点
-- vim.opt.list = true
-- vim.opt.listchars = 
-- {
--     space = "·",
--     tab = "»"
-- }

-- -- 设置缩进
-- vim.o.tabstop = 4
-- vim.opt.softtabstop = 4
-- vim.bo.tabstop = 4
-- vim.o.shiftwidth = 4
-- vim.bo.shiftwidth = 4

-- vim.o.expandtab = true
-- vim.bo.expandtab = true

-- -- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- -- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- -- unmap a default keymapping
-- -- vim.keymap.del("n", "<C-Up>")
-- -- override a default keymapping
-- -- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- -- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- -- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- -- local _, actions = pcall(require, "telescope.actions")
-- -- lvim.builtin.telescope.defaults.mappings = {
-- --   -- for input mode
-- --   i = {
-- --     ["<C-j>"] = actions.move_selection_next,
-- --     ["<C-k>"] = actions.move_selection_previous,
-- --     ["<C-n>"] = actions.cycle_history_next,
-- --     ["<C-p>"] = actions.cycle_history_prev,
-- --   },
-- --   -- for normal mode
-- --   n = {
-- --     ["<C-j>"] = actions.move_selection_next,
-- --     ["<C-k>"] = actions.move_selection_previous,
-- --   },
-- -- }

-- -- Use which-key to add extra bindings with the leader-key prefix
-- -- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- -- lvim.builtin.which_key.mappings["t"] = {
-- --   name = "+Trouble",
-- --   r = { "<cmd>Trouble lsp_references<cr>", "References" },
-- --   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
-- --   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
-- --   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
-- --   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
-- --   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
-- -- }

-- -- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
-- lvim.builtin.alpha.active = true
-- lvim.builtin.alpha.mode = "dashboard"
-- lvim.builtin.notify.active = true
-- lvim.builtin.terminal.active = false
-- -- lvim.builtin.terminal.shell = "pwsh.exe -NoLogo"

-- -- nvim-tree has some performance issues on windows, see kyazdani42/nvim-tree.lua#549
-- lvim.builtin.nvimtree.setup.diagnostics.enable = nil
-- lvim.builtin.nvimtree.setup.filters.custom = nil
-- lvim.builtin.nvimtree.setup.git.enable = nil
-- lvim.builtin.nvimtree.setup.update_cwd = nil
-- lvim.builtin.nvimtree.setup.update_focused_file.update_cwd = nil
-- lvim.builtin.nvimtree.setup.view.side = "left"
-- lvim.builtin.nvimtree.setup.renderer.highlight_git = nil
-- lvim.builtin.nvimtree.setup.renderer.icons.show.git = nil

-- -- if you don't want all the parsers change this to a table of the ones you want
-- lvim.builtin.treesitter.ensure_installed = {
--   "c",
--   "lua",
--   "cpp"
-- }

-- lvim.builtin.treesitter.ignore_install = { "haskell" }
-- lvim.builtin.treesitter.highlight.enabled = true
-- lvim.builtin.treesitter.rainbow.enable = true

-- -- generic LSP settings

-- -- -- make sure server will always be installed even if the server is in skipped_servers list
-- -- lvim.lsp.installer.setup.ensure_installed = {
-- --     "sumeko_lua",
-- --     "jsonls",
-- -- }
-- -- -- change UI setting of `LspInstallInfo`
-- -- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- -- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
-- -- lvim.lsp.installer.setup.ui.border = "rounded"
-- -- lvim.lsp.installer.setup.ui.keymaps = {
-- --     uninstall_server = "d",
-- --     toggle_server_expand = "o",
-- -- }

-- -- ---@usage disable automatic installation of servers
-- -- lvim.lsp.installer.setup.automatic_installation = false

-- -- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- -- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- -- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- -- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- -- require("lvim.lsp.manager").setup("pyright", opts)

-- -- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- -- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- -- vim.tbl_map(function(server)
-- --   return server ~= "emmet_ls"
-- -- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- -- you can set a custom on_attach function that will be used for all the language servers
-- -- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- -- lvim.lsp.on_attach_callback = function(client, bufnr)
-- --   local function buf_set_option(...)
-- --     vim.api.nvim_buf_set_option(bufnr, ...)
-- --   end
-- --   --Enable completion triggered by <c-x><c-o>
-- --   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- -- end

-- -- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- -- local formatters = require "lvim.lsp.null-ls.formatters"
-- -- formatters.setup {
-- --   { command = "black", filetypes = { "python" } },
-- --   { command = "isort", filetypes = { "python" } },
-- --   {
-- --     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
-- --     command = "prettier",
-- --     ---@usage arguments to pass to the formatter
-- --     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
-- --     extra_args = { "--print-with", "100" },
-- --     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
-- --     filetypes = { "typescript", "typescriptreact" },
-- --   },
-- -- }

-- -- -- set additional linters
-- -- local linters = require "lvim.lsp.null-ls.linters"
-- -- linters.setup {
-- --   { command = "flake8", filetypes = { "python" } },
-- --   {
-- --     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
-- --     command = "shellcheck",
-- --     ---@usage arguments to pass to the formatter
-- --     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
-- --     extra_args = { "--severity", "warning" },
-- --   },
-- --   {
-- --     command = "codespell",
-- --     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
-- --     filetypes = { "javascript", "python" },
-- --   },
-- -- }

-- -- Additional Plugins
-- -- lvim.plugins = {
-- --     {"folke/tokyonight.nvim"},
-- --     {
-- --       "folke/trouble.nvim",
-- --       cmd = "TroubleToggle",
-- --     },
-- -- }

-- lvim.plugins = {
--      {"p00f/nvim-ts-rainbow"},
-- }

-- -- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- -- vim.api.nvim_create_autocmd("BufEnter", {
-- --   pattern = { "*.json", "*.jsonc" },
-- --   -- enable wrap mode for json files only
-- --   command = "setlocal wrap",
-- -- })
-- -- vim.api.nvim_create_autocmd("FileType", {
-- --   pattern = "zsh",
-- --   callback = function()
-- --     -- let treesitter use bash highlight for zsh files as well
-- --     require("nvim-treesitter.highlight").attach(0, "bash")
-- --   end,
-- -- })

--[[
 THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
 `lvim` is the global options object
]]

-- Enable powershell as your default shell
vim.opt.shell = "pwsh.exe -NoLogo"
vim.opt.shellcmdflag =
  "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
vim.cmd [[
		let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
		let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
		set shellquote= shellxquote=
  ]]

-- Set a compatible clipboard manager
vim.g.clipboard = {
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },
}

-- general
lvim.log.level = "warn"
lvim.format_on_save = false
lvim.colorscheme = "onedarker"
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<C-z>"] = "u"
lvim.keys.insert_mode["<C-z>"] = "<ESC>u"
lvim.keys.insert_mode["<C-s>"] = "<ESC>:w<CR>"

lvim.keys.normal_mode["qq"] = ":q!<CR>"
lvim.keys.normal_mode["q"] = ":q<CR>"
lvim.keys.normal_mode["Q"] = ":qa!<CR>"

lvim.keys.normal_mode["<A-o>"] = ":ClangdSwitchSourceHeader<CR>"
lvim.keys.insert_mode["<A-o>"] = "<ESC>:ClangdSwitchSourceHeader<CR>"

lvim.keys.normal_mode["<C-p>"] = "<cmd>Telescope find_files<CR>"
lvim.keys.normal_mode[";e"] = "<cmd>NvimTreeToggle<CR>"

lvim.keys.normal_mode["<leader><leader><tab>"] = "<cmd>BufferLineCyclePrev<cr>"
lvim.keys.normal_mode["<leader><tab>"] = "<cmd>BufferLineCycleNext<cr>"

lvim.keys.insert_mode["<C-h>"] = "<ESC>I"
lvim.keys.insert_mode["<C-l>"] = "<ESC>A"
lvim.keys.normal_mode["<C-h>"] = "^"
lvim.keys.normal_mode["<C-l>"] = "$"
lvim.keys.normal_mode["<leader>p"] = "<C-o>"
lvim.keys.normal_mode["<leader>n"] = "<C-i>"

-- todo 
--lvim.keys.normal_mode["<C-//>"] = "<Plug>(comment_toggle_linewise_current)"

lvim.keys.normal_mode["vv"] = "<C-v>"
-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- 不可见字符的显示，这里只把空格显示为一个点
vim.opt.list = true
vim.opt.listchars:append("space:·")
vim.opt.listchars:append("tab:⚑☛")
vim.opt.listchars:append("trail:☠")
--vim.opt.listchars:append("eol:↴")

-- 设置缩进
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.bo.tabstop = 4
vim.opt.shiftwidth = 4
vim.bo.shiftwidth = 4

vim.opt.expandtab = true
vim.bo.expandtab = true

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
-- }

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = false
-- lvim.builtin.terminal.shell = "pwsh.exe -NoLogo"

-- nvim-tree has some performance issues on windows, see kyazdani42/nvim-tree.lua#549
lvim.builtin.nvimtree.setup.diagnostics.enable = nil
lvim.builtin.nvimtree.setup.filters.custom = nil
lvim.builtin.nvimtree.setup.git.enable = nil
lvim.builtin.nvimtree.setup.update_cwd = nil
lvim.builtin.nvimtree.setup.update_focused_file.update_cwd = nil
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.highlight_git = nil
lvim.builtin.nvimtree.setup.renderer.icons.show.git = nil

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "c",
  "lua",
  "cpp",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.rainbow.enable = true
lvim.builtin.treesitter.rainbow.colors = {"#ddaaaa", "#ab6985", "#D6A760", "#7794f4", "#b38bf5", "#7cc7fe"}

lvim.builtin.which_key.mappings.l = vim.tbl_extend("keep", lvim.builtin.which_key.mappings.l,{o={"<cmd>SymbolsOutline<cr>", "Open Outline"}})

-- generic LSP settings

-- -- make sure server will always be installed even if the server is in skipped_servers list
-- lvim.lsp.installer.setup.ensure_installed = {
--     "sumeko_lua",
--     "jsonls",
-- }
-- -- change UI setting of `LspInstallInfo`
-- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
--     uninstall_server = "d",
--     toggle_server_expand = "o",
-- }

-- ---@usage disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- vim.tbl_map(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black", filetypes = { "python" } },
--   { command = "isort", filetypes = { "python" } },
--   {
--     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

-- Additional Plugins
-- lvim.plugins = {
--     {"folke/tokyonight.nvim"},
--     {
--       "folke/trouble.nvim",
--       cmd = "TroubleToggle",
--     },
-- }

lvim.plugins = {
    {"p00f/nvim-ts-rainbow"},
    {"lukas-reineke/indent-blankline.nvim",
         setup = function()
    vim.g.indent_blankline_char = "▏"
  end,
  config = function()
      require("indent_blankline").setup {
        enabled = true,
        bufname_exclude = { "README.md" },
        buftype_exclude = { "terminal", "nofile" },
        filetype_exclude = {
          "alpha",
          "log",
          "gitcommit",
          "dapui_scopes",
          "dapui_stacks",
          "dapui_watches",
          "dapui_breakpoints",
          "dapui_hover",
          "LuaTree",
          "dbui",
          "UltestSummary",
          "UltestOutput",
          "vimwiki",
          "markdown",
          "json",
          "txt",
          "vista",
          "NvimTree",
          "git",
          "TelescopePrompt",
          "undotree",
          "flutterToolsOutline",
          "org",
          "orgagenda",
          "help",
          "startify",
          "dashboard",
          "packer",
          "neogitstatus",
          "NvimTree",
          "Outline",
          "Trouble",
          "lspinfo",
          "", -- for all buffers without a file type
      },
        show_trailing_blankline_indent = false,
        show_first_indent_level = false,
        space_char_blankline = " ",
        use_treesitter = true,
        show_foldtext = false,
        show_current_context = true,
        show_current_context_start = false,
        context_patterns = {
          "class",
          "return",
          "function",
          "method",
          "^if",
          "^do",
          "^switch",
          "^while",
          "jsx_element",
          "^for",
          "^object",
          "^table",
          "block",
          "arguments",
          "if_statement",
          "else_clause",
          "jsx_element",
          "jsx_self_closing_element",
          "try_statement",
          "catch_clause",
          "import_statement",
          "operation_type",
        },
      }
  end,
  event = "BufRead",},

    {"simrat39/symbols-outline.nvim", cmd="SymbolsOutline", config=function()
        require("symbols-outline").setup({})
    end},
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })