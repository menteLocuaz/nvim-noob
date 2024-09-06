vim.cmd("let g:netrw_liststyle = 3")
-- variable
local opt = vim.opt

vim.keymap.set("n","<leader>e",vim.cmd.NvimTreeToggle)
vim.keymap.set("n","<Tab>",vim.cmd.bnext)
vim.keymap.set("n","<S-Tab>",vim.cmd.bprevious)

opt.relativenumber = true
opt.number = true
-- Tab y indentacion
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.ignorecase = true -- ignora caso de busqueda
opt.smartcase = true -- es mas sensitvo en caso de busqueda

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- cliboard
opt.splitright = true
opt.splitbelow = true
