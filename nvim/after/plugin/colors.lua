require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    -- NOTE: bleh bleh
    -- BUG: oh no
    -- ISSUE: no 
    -- TODO: to do 
    -- DONE: done
    color_overrides = {
        all = {
            rosewater = "#f5e0dc",   -- #f5e0dc no clue what this is (left on default)
            flamingo =  "#94e2d5",   -- #f2cdcd curly brackets
            pink =      "#f5c2e7",   -- #f5c2e7 no clue what this is (left on default)
            mauve =     "#cba6f7",   -- #cba6f7 type Snippet in lsp
            red =       "#f38ba8",   -- #f38ba8 probably compiler errors (left on default)
            maroon =    "#eba0ac",   -- #eba0ac no clue
            peach =     "#74c7ec",   -- #fab387 values (2, true, 1.42, [2,3]) 
            yellow =    "#f9e2af",   -- #f9e2af no clue
            green =     "#a6e3a1",   -- #a6e3a1 strings in "" or ''
            teal =      "#94e2d5",   -- #94e2d5 type Text in lsp
            sky =       "#89dceb",   -- #89dceb equal signs
            sapphire =  "#74c7ec",   -- #74c7ec
            blue =      "#DFE0E2",   -- #89b4fa dashboard text / .traits        
            lavender =  "#DFE0E2",   -- #bfd6ff text / variables               
            text =      "#e8e8e8",   -- #e8e8e8 plain text / md
            subtext1 =  "#DFE0E2",   -- #bac2de no clue
            subtext0 =  "#a6adc8",   -- #a6adc8 no clue
            overlay2 =  "#9399b2",   -- #9399b2 commas / lsp text prediction
            overlay1 =  "#DFE0E2",   -- #7f849c no clue
            overlay0 =  "#6c7086",   -- #6c7086 comment color
            surface2 =  "#585b70",   -- #585b70 no clue
            surface1 =  "#45475a",   -- #45475a relative num color / tab select color / visual mode selection color
            surface0 =  "#313244",   -- #313244
            base =      "#1a1a1c",   -- #1a1a1c background
            mantle =    "#333333",   -- #333333 path mantle
            crust =     "#262926",   -- #262926 : + tab / prediction lsp menu
        },
    },
    custom_highlights = {},
    integration_default = nil, -- set to true/false to enable/disable integrations by default
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
