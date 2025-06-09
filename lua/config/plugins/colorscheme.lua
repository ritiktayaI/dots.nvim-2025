return {
    {
        "rebelot/kanagawa.nvim",
        config = function()
            -- vim.cmd.colorscheme("kanagawa-wave")
        end,
    },
    {
        "folke/tokyonight.nvim",
        config = function()
            -- vim.cmd.colorscheme "tokyonight"
        end
    },
    {
        'projekt0n/github-nvim-theme',
        name = 'github-theme',
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            vim.cmd('colorscheme github_dark_tritanopia')
        end,
    }
}
