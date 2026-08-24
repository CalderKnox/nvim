-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Highlight on yank(copy) in visual mode
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank({ timeout = 300, higroup = 'IncSearch' })
    end
})

-- Resize splits if window got resized
local augroup = vim.api.nvim_create_augroup("ResizeWindows", { clear = true })
vim.api.nvim_create_autocmd("VimResized", {
    group = augroup,
    pattern = "*",
    callback = function()
        vim.cmd("tabdo wincmd =")
    end,
})


-- Highlight the current line only in normal mode
vim.api.nvim_create_autocmd({ "InsertEnter", "InsertLeave" }, {
    group = vim.api.nvim_create_augroup("HighlightCursorLine", { clear = true }),
    pattern = "*",
    callback = function(ev)
        vim.opt.cursorline = (ev.event == "InsertLeave")
    end,
})


-- Set tab and indentation settings for Python files
vim.api.nvim_create_autocmd("FileType", {
    group = vim.api.nvim_create_augroup("FileTypeSettings", { clear = true }),
    pattern = "python",
    callback = function()
        vim.opt_local.tabstop = 4
        vim.opt_local.shiftwidth = 4
        vim.opt_local.expandtab = true
    end,
})

-- Automatically format code on save for specific file
vim.api.nvim_create_autocmd("BufWritePre", {
    group = augroup,
    pattern = { "*.lua", "*.py", "*.js" }, -- 只对特定文件类型生效
    callback = function()
        -- 如果你使用 LSP 的格式化功能
        vim.lsp.buf.format({ async = false })
    end,
})
