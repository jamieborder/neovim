vim.g.mapleader = " "

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.belloff = "all"

vim.opt.smartindent = true

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 4
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

--vim.api.nvim_set_hl(0, "ColorColumn", { bg="#E6A2F3"})
vim.api.nvim_set_hl(0, "ColorColumn", { bg="#00FF7F"})
--vim.api.nvim_set_hl(0, "ColorColumn", { bg="#FEF3B4"})
vim.fn.matchadd("ColorColumn", "\\%81v\\S")

-- Nerdcommenter global settings
vim.g.NERDSpaceDelims = 1
vim.g.NERDSpaceDelims = 1
vim.g.NERDRemoveAltComs = 0
vim.g.NERDTrimTrailingWhitespace = 1
vim.g.NERDCustomDelimiters = { ['c'] = { ['left']='//', ['right']='' } }
vim.g.cpp_attributes_highlight = 1

vim.api.nvim_create_autocmd({"BufReadPost"}, {
    pattern = {"*"},
    callback = function()
        if vim.fn.line("'\"") > 1 and vim.fn.line("'\"") <= vim.fn.line("$") then
            vim.api.nvim_exec("normal! g'\"",false)
        end
    end
})
