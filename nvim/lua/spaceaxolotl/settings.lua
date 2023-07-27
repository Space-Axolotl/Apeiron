local g = vim.g
local opt = vim.opt

-- cursor --
opt.cursorline = true
opt.cursorcolumn = false

-- line number --
opt.relativenumber = true
opt.number = true
opt.numberwidth = 1

-- netrw --
--g.netrw_banner = 0
--g.netrw_liststyle = 1
--g.netrw_sizestyle = 'h'
--g.netrw_list_hide = '^./'

-- chars --
--opt.fillchars = 'eob: '

-- color stuff --
--opt.termguicolors = true

-- disable standart mode display --
--opt.showmode = false

-- show lines below cursor --
--opt.scrolloff = 3

-- indenting --
opt.tabstop = 3
opt.softtabstop = 3
opt.shiftwidth = 3
opt.expandtab = true
opt.smartindent = true

-- search --
--opt.ignorecase = true
--opt.smartcase = true
--opt.hlsearch = false
--opt.incsearch = true
