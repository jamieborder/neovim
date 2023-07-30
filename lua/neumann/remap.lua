vim.g.mapleader = " "

-- shifting highlighted blocks up / down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- cursor stays in place when joining lines
vim.keymap.set("n", "J", "mzJ`z")

-- keeps cursor in middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- jump back out of file to files view
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- paste and doesn't copy to register
vim.keymap.set("x", "<leader>p", "\"_dP")

-- copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete to void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- 
vim.keymap.set("n", "Q", "<nop>")

-- 
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

vim.keymap.set("n", "<C-J>", "<C-W><C-J>")
vim.keymap.set("n", "<C-K>", "<C-W><C-K>")
vim.keymap.set("n", "<C-L>", "<C-W><C-L>")
vim.keymap.set("n", "<C-H>", "<C-W><C-H>")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>") 
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


-- gO to create a new line below cursor in normal mode
vim.keymap.set("n", "g<C-O>", "o<ESC>k", {noremap = false})
-- g<Ctrl+o> to create a new line above cursor
vim.keymap.set("n", "gO", "O<ESC>j", {noremap = false})

-- aliases for phat fingers
vim.keymap.set("x", "<Cmd>W", "<Cmd>w")
vim.keymap.set("x", "<Cmd>WQ", "<Cmd>wq")
vim.keymap.set("x", "<Cmd>Wq", "<Cmd>wq")
vim.keymap.set("x", "<Cmd>Q!", "<Cmd>q!")

-- showing bad white space
-- au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
--vim.keymap.set("n", "<F5>" ":let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>")

vim.keymap.set("i", "jk", "<Esc>")

-- python maps
vim.keymap.set("n", "pylib", "iimport matplotlib.pyplot as plt<cr>import numpy as np<cr>import matplotlib.cm as cm<cr>from scipy.io import FortranFile<cr><cr><Esc>")

-- C++ maps
vim.keymap.set("n", "cinit", "o#include <iostream><cr><cr>using namespace std;<cr><cr>int main()<cr>{<cr><cr><cr>}<Esc>kO")
vim.keymap.set("n", "cline", "ostd::cout <<  << '\n';<Esc>bbbbhi")
vim.keymap.set("n", "dbg", "o// DEBUG<cr>// DEBUG<Esc>O")
vim.keymap.set("n", "debug", "o//====DEBUG====<cr>import std.stdio;<cr><cr>import core.stdc.stdlib: exit;<cr>exit(0);<cr>//====DEBUG====<cr><Esc>kkkk")

-- latex maps
-- vim.keymap.set("n", "die", "\begin{align}<cr>\end{align}<Esc>O")
-- vim.keymap.set("n", "div", "o\begin{verbatim}<cr>\end{verbatim}<Esc>O")
-- vim.keymap.set("n", "dif", "o\begin{figure}[h!]<cr>\centering<cr>\includegraphics[width=1.0\textwidth]{}<cr>\includesvg[width=1.0\textwidth]{}<cr>\caption[]{}<cr>\label{}<cr>\end{figure}<Esc>kkkkA<Esc>i")
-- vim.keymap.set("n", "dii", "o\begin{itemize}<cr>\item<cr>\end{itemize}<Esc>kA")

vim.keymap.set("i", "dsc", "discontinuit")

--  --------- LATEX Specific Options --------- 
-- Wrap sentences
vim.keymap.set("n", "<M-w>", "gq)")

-- Remap the tic mark so it jumps to the exact column and line when going back.
vim.keymap.set("n", "'", "`")
vim.keymap.set("n", "`", "'")

-- Make the scrolling a little faster.
vim.keymap.set("n", "<C-e>", "7<C-e>")
vim.keymap.set("n", "<C-y>", "7<C-y>")

--
vim.cmd.cnoreabbrev({"<buffer>", "W", "w"})
vim.cmd.cnoreabbrev({"<buffer>", "Q", "q"})
vim.cmd.cnoreabbrev({"<buffer>", "WQ", "wq"})
vim.cmd.cnoreabbrev({"<buffer>", "Wq", "wq"})

-- " highlighting while searching
-- map /  <Plug>(incsearch-forward)
-- map ?  <Plug>(incsearch-backward)
-- map g/ <Plug>(incsearch-stay)
-- 
-- " set hlsearch
-- " :h g:incsearch#auto_nohlsearch
-- set hlsearch
-- let g:incsearch#auto_nohlsearch = 1
-- map n  <Plug>(incsearch-nohl-n)
-- map N  <Plug>(incsearch-nohl-N)
-- map *  <Plug>(incsearch-nohl-*)
-- map #  <Plug>(incsearch-nohl-#)
-- map g* <Plug>(incsearch-nohl-g*)
-- map g# <Plug>(incsearch-nohl-g#)


--- Buffer navigation
-- remap `:b' to ` b'
vim.api.nvim_set_keymap('n', '<Leader>b', ':b', { noremap = true })
-- :nnoremap <Leader>b :b
vim.api.nvim_set_keymap('n', '<Leader>ls', ':ls', { noremap = true })
-- :nnoremap <Leader>ls :ls


--- LSP 
-- vim.keymap.set('i', '<CR>', function()
    -- return require('lsp_compl').accept_pum() and '<C-y>' or '<CR>'
-- end, {expr = true})
