local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true })
end

--keybindings
map({'n', 'x'}, 'x', '"_x')
map({'n', 'x'}, 'y', '"+y')
map({'n', 'x'}, 'p', '"+p')
map('x', '<C-r>', '"hy:%s/<C-r>h//gc<left><left><left>')
map('n', '<C-t>', '<cmd>NvimTreeToggle<CR>')
