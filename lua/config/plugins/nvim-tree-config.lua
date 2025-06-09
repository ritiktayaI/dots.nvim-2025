return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 30,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
        })
        vim.keymap.set("n", "<leader>st", function()
            vim.cmd.NvimTreeOpen()
        end)

        vim.keymap.set("n", "<leader>sc", function()
            vim.cmd.NvimTreeClose()
        end)
    end,
}
