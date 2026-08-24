-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- if true then return {} end
vim.opt.clipboard = "unnamedplus"             -- Use system clipboard
vim.opt.completeopt = "menu,menuone,noselect" -- Better completion experience

-- Set relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true


-- Set tab and indentation settings
vim.opt.tabstop = 4        -- Number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 4     -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true   -- Use spaces instead of tabs
vim.opt.smartindent = true -- Use smart indentation
vim.opt.autoindent = true  -- Use auto indentation
vim.opt.wrap = false       -- Disable line wrapping
vim.opt.scrolloff = 8      -- Keep 8 lines visible when scrolling

-- search settings
vim.opt.ignorecase = true      -- Ignore case when searching
vim.opt.smartcase = true       -- Override ignorecase if search contains uppercase letters
vim.opt.hlsearch = true        -- Highlight search results
vim.opt.incsearch = true       -- Show search results as you type
vim.opt.inccommand = "nosplit" -- Show the effects of a command incrementally
vim.opt.showmatch = true       -- Show matching brackets when text indicator is over them

-- Set color scheme
vim.opt.termguicolors = true -- Enable 24-bit RGB colors in the terminal
vim.opt.colorcolumn = "100"  -- line length marker at 100 columns
