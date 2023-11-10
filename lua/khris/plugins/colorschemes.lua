return {

    -- NORDIC
    {
        "AlexvZyl/nordic.nvim",
        lazy = false,
        priority = 1000,
        config = function(plugin)
            vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
            vim.cmd([[colorscheme nordic]])
        end,
    },
    {
        -- AURA
        "baliestri/aura-theme",
        lazy = false,
        config = function(plugin)
            vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
            vim.cmd([[colorscheme aura-dark]])
        end,
    },

    {
        "ray-x/starry.nvim",
        priority = 1000,
        config = function(plugin)
            vim.g.starry_italic_comments = true
            vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
            vim.cmd([[colorscheme starry]])
        end,
    },
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
        },
    },
}
