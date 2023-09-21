local Terminal  = require('toggleterm.terminal').Terminal
require("toggleterm").setup({
    -- size can be a number or function which is passed the current terminal
    vim.api.nvim_set_keymap("n", "<leader>s", "<cmd>lua _spotifytui_toggle()<CR>", {noremap = true, silent = true}),
    vim.api.nvim_set_keymap("n", "<leader>b", "<cmd>lua _btop_toggle()<CR>", {noremap = true, silent = true}),
    vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true}),
    vim.api.nvim_set_keymap("n", "<leader>f", "<cmd>lua _floatingterm_toggle()<CR>", {noremap = true, silent = true}),
    vim.api.nvim_set_keymap("n", "<leader>j", "<cmd>lua _horizontalterm_toggle()<CR>", {noremap = true, silent = true}),
})

local spotifytui = Terminal:new({
    cmd = "spt",
    dir = "git_dir",
    direction = "float",
    float_opts = {
        border = "double",
    },

    on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
    end,

    on_close = function(term)
        vim.cmd("startinsert!")
    end,

})

local btop = Terminal:new({
    cmd = "btop",
    dir = "git_dir",
    direction = "float",
    float_opts = {
        border = "double",
    },

    on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
    end,

    on_close = function(term)
        vim.cmd("startinsert!")
    end,

})

local lazygit = Terminal:new({
    cmd = "lazygit",
    dir = "git_dir",
    direction = "float",
    float_opts = {
        border = "double",
    },
    -- function to run on opening the terminal
    on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
    end,
    -- function to run on closing the terminal
    on_close = function(term)
        vim.cmd("startinsert!")
    end,
})

local floatingterm = Terminal:new({
    cmd = "zsh",
    dir = "git_dir",
    direction = "float",
    float_opts = {},

    on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
    end,

    on_close = function(term)
        vim.cmd("startinsert!")
    end,
})

local horizontalterm = Terminal:new({
    cmd = "zsh",
    dir = "git_dir",
    direction = "horizontal",
    float_opts = {},

    on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
    end,

    on_close = function(term)
        vim.cmd("startinsert!")
    end,

})

function _spotifytui_toggle()
    spotifytui:toggle()
end

function _btop_toggle()
    btop:toggle()
end


function _lazygit_toggle()
    lazygit:toggle()
end

function _floatingterm_toggle()
    floatingterm:toggle()
end

function _horizontalterm_toggle()
    horizontalterm:toggle()
end
