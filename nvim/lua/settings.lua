-- Necessary
require "aliases/globals"

-- Relative lines
opt.relativenumber = true

-- Highlight current line and line number
opt.cursorline = true

-- Tabs
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

-- Clipboard
opt.clipboard = 'unnamedplus'
opt.fixeol = false

-- Folding
opt.foldmethod = 'syntax'

-- Search
opt.ignorecase = true
opt.joinspaces = true
opt.smartcase = true
opt.showmatch = true

-- Lines
vim.wo.number = true

-- Spliting
opt.splitbelow = true
opt.splitright = true

local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

-- Cmp
--
-- Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortness: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300) 

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error 
-- Show inlay_hints more frequently 
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])


for _, plugin in pairs(disabled_built_ins) do
    g["loaded_" .. plugin] = 1
end
