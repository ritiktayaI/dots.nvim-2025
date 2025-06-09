local M = {}

local state = {
    floating = {
        buf = -1,
        win = -1,
    }
}

local function create_floating_window(opts)
    opts = opts or {}
    local width = opts.width or math.floor(vim.o.columns * .80)
    local height = opts.height or math.floor(vim.o.lines * .80)

    -- Calculate the position to center the window
    local col = math.floor((vim.o.columns - width) / 2)
    local row = math.floor((vim.o.lines - height) / 2)

    -- Create a buffer
    local buf = vim.api.nvim_create_buf(false, true)

    -- Define window configuration
    local win_config = {
        relative = "editor",
        width = width,
        height = height,
        col = col,
        row = row,
        style = "minimal",
        border = "rounded",
    }

    -- Create the floating window
    local win = vim.api.nvim_open_win(buf, true, win_config)

    return { buf = buf, win = win }
end

vim.api.nvim_create_user_command("Floaterminal", function()
    -- if not vim.api.nvim_win_is_valid()
    state.floating = create_floating_window()
end, {})

return M
