local set = vim.opt

set.number = true
set.relativenumber = true

-- opens a new horizontal split downwards
set.splitbelow = true
-- opens a new vertical split in right direction
set.splitright = true

set.wrap = false

set.virtualedit = "block"

set.inccommand = "split"

set.ignorecase = true

set.termguicolors = true

set.expandtab = true
set.tabstop = 4
set.shiftwidth = 4

-- Synchronizes the system clipboard
-- with Neovim's clipboard
set.clipboard = "unnamedplus"

set.scrolloff = 999

set.signcolumn = "yes:1"

set.cursorline = true
set.autoread = true

vim.g.mapleader = " "
