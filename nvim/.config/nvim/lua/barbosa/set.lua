local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.showmode = false

opt.clipboard = "unnamedplus"

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.softtabstop = 4
opt.autoindent = true
opt.breakindent = true
opt.smartindent = true
opt.smartcase = true
opt.wrap = false

opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true
opt.ignorecase = true

opt.updatetime = 1000

opt.scrolloff = 10
