local keymap = vim.keymap

keymap.set('n', '<C-a>', 'ggVG')
keymap.set('n', '<C-s>', '<cmd>w<cr>')

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Paste without yanking
-- keymap.set('x', 'p', 'P')
keymap.set({ 'n', 'x' }, '<leader>p', '"0p')

keymap.set('n', '<leader>q', '<cmd>q<cr>')
keymap.set('n', '<leader>w', '<cmd>w<cr>')
keymap.set('n', '<leader>x', '<cmd>x<cr>')

keymap.set('n', 'j', [[v:count?'j':'gj']], { noremap = true, expr = true })
keymap.set('n', 'k', [[v:count?'k':'gk']], { noremap = true, expr = true })

keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Split
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Center cursor on scroll
keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')

keymap.set('n', '<leader>y', '<CMD>Bpytop<CR>')

keymap.set('n', '<A-j>', ':m .+1<CR>==') -- move line up(n)
keymap.set('n', '<A-k>', ':m .-2<CR>==') -- move line down(n)
keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv") -- move line up(v)
keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv") -- move line down(v)
