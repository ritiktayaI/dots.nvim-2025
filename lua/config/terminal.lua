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

local job_id = 0
vim.keymap.set("n", "<leader>ts", function()
    vim.cmd.vnew()
	vim.cmd.term()
    vim.cmd.wincmd("J")
	vim.api.nvim_win_set_height(0, 10)


    -- vim.api.nvim_open_win(0, false, {relative='win', row=3, col=3, width=12, height=3})

    job_id = vim.bo.channel
end)

vim.keymap.set("n", "<leader>example", function()
    vim.fn.chansend(job_id, { "ls -al", "" })
end)
