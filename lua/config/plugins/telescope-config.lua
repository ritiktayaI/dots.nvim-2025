return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            -- build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release'
            build = 'make'
        }
    },
    config = function()
        require('telescope').setup {
            pickers = {
                help_tags = {
                    theme = "dropdown" -- "ivy"
                },
                find_files = {
                    theme = "dropdown"
                }
            },
            ---extensions = {
                ---fzf = {}
            ---}
        }

        -- require('telescope').load_extension('fzf')

        vim.keymap.set("n", "<leader>fh", require('telescope.builtin').help_tags) -- (f)ind (h)elp_tags
        vim.keymap.set("n", "<leader>ff", require('telescope.builtin').find_files)-- (f)ind all (f)iles
        vim.keymap.set("n", "<leader>fg", require('telescope.builtin').git_files) -- (f)ind (g)it files
        vim.keymap.set("n", "<leader>cc", require('telescope.builtin').colorscheme) -- (c)hange (c)olorscheme
        vim.keymap.set("n", "<leader>enc", function() -- (e)dit (n)eovim (c)onfig
            require('telescope.builtin').find_files {
                cwd = vim.fn.stdpath("config")
            }
        end)

        vim.keymap.set("n", "<leader>enp", function() -- (e)dit (n)eovim (p)ackages
            require('telescope.builtin').find_files {
                cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy")
            }
        end)

        require "config.telescope.multigrep".setup()
    end
}
