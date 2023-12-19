return {
    "nvim-lua/plenary.nvim", -- lua functions that many plugins use

    --    "ray-x/starry.nvim", -- colour collections
    --    "marko-cerovac/material.nvim",

    "christoomey/vim-tmux-navigator", -- tmux & split window navigation

    "inkarkat/vim-ReplaceWithRegister", -- replace with register contents using motion (gr + motion)

    "github/copilot.vim", -- github copilot

    "puremourning/vimspector", -- dbugging

    "jwalton512/vim-blade", -- blade

    "mattn/emmet-vim",

    -- bufferline
    {
        "akinsho/bufferline.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        version = "*",
        opts = {
            options = {
                mode = "tabs",
                separator_style = "padded_slant",
            },
        },
    },
}
