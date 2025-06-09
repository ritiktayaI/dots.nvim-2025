-- Remapping keybindings to switch from terminal mode to normal mode
vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-v><Esc>', [[<Esc>]], { noremap = true, silent = true })

vim.api.nvim_create_autocmd('TermOpen', {
	group = vim.api.nvim_create_augroup('custom-term-open', { clear = true }),
	callback = function()
		vim.opt.number = false
		vim.opt.relativenumber = false
	end,
})

vim.keymap.set("n", "<space>ts", function()
	vim.cmd.term()
--	vim.api.nvim_win_set_height(0, 15)
end)
