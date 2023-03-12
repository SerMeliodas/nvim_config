local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true })
end

--keybindings
map({'n', 'x'}, 'x', '"_x')
map('x', '<C-r>', '"hy:%s/<C-r>h//gc<left><left><left>')
map('n', '<C-t>', '<cmd>NvimTreeToggle<CR>')
map('n', '<C-l>', '<cmd>!py %<CR>')
