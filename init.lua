-- Properties
local default_textwidth = 80
local default_tabwidth = 2
local leader = " "
local default_scale = 0.55

-- End of Properties

-- Graphical frontend configuration
if vim.g.neovide then
  vim.g.neovide_fullscreen = true
  vim.o.guifont = "3270 Nerd Font Mono:h14"
  vim.keymap.set('n', '<D-s>', ':w<CR>')      -- Save
  vim.keymap.set('v', '<D-c>', '"+y')         -- Copy
  vim.keymap.set('n', '<D-v>', '"+P')         -- Paste normal mode
  vim.keymap.set('v', '<D-v>', '"+P')         -- Paste visual mode
  vim.keymap.set('c', '<D-v>', '<C-R>+')      -- Paste command mode
  vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode
  vim.g.neovide_scale_factor = default_scale
  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end
  vim.keymap.set("n", "<C-=>", function()
    change_scale_factor(1.05)
  end)
  vim.keymap.set("n", "<C-->", function()
    change_scale_factor(1 / 1.05)
  end)
  vim.keymap.set("n", "<C-0>", function()
    vim.g.neovide_scale_factor = default_scale
  end)
end

-- Fix change to themes present in vim 0.10.0+
vim.cmd('colorscheme vim')
vim.o.termguicolors = false

-- disable netrw at the very start of your init.lua (required by nvim-tree)
vim.go.fillchars = 'eob: '
vim.cmd("map ; :")
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

-- Basic defaults
vim.g.mapleader = leader

vim.g.wrap = true
vim.g.textwidth = default_textwidth
vim.cmd("set colorcolumn=" .. default_textwidth)

-- vim.cmd("set foldmethod=indent")

vim.cmd("set nowrap")
-- vim.cmd("set textwidth=80")
vim.cmd("set cmdheight=0")

vim.cmd("set expandtab")
vim.cmd("set tabstop=" .. default_tabwidth)
vim.cmd("set softtabstop=" .. default_tabwidth)
vim.cmd("set shiftwidth=" .. default_tabwidth)

vim.cmd("set number")
vim.cmd("set relativenumber")

vim.g.smarttab = true

-- Make terminals not have numbers
vim.api.nvim_create_autocmd({ "TermOpen", "TermEnter" }, {
  pattern = "*",
  callback = function()
    vim.cmd("set norelativenumber")
    vim.cmd("set nonumber")
  end,
})

-- autocmds based on file extensions
for _, v in ipairs(require("autocmds")) do
  vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter", "BufFilePost" }, {
    pattern = v.extension,
    callback = v.callback,
  })
end

-- Installing lazy.nvim --
--
-- This combines this path with /lazy/lazy.nvim I think?
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- If no files exist at that path
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
-- Adds the lazy path to the runtime paths
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(require("plugins"), { defaults = { lazy = true } })

-- Load file mappings
local maps = require("mappings");
for mode, mappings in pairs(maps) do
  require('which-key').register(mappings, { mode = mode })
end

-- Run Rc
require("rc")
