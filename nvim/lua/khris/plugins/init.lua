return {
    "nvim-lua/plenary.nvim", -- lua functions that many plugins use

    --    "ray-x/starry.nvim", -- colour collections
    --    "marko-cerovac/material.nvim",

    "christoomey/vim-tmux-navigator", -- tmux & split window navigation

    "inkarkat/vim-ReplaceWithRegister", -- replace with register contents using motion (gr + motion)

    "github/copilot.vim", -- github copilot

    -- "puremourning/vimspector", -- dbugging

    -- "jwalton512/vim-blade", -- blade

    -- "mattn/emmet-vim",

    "komissarex/vim-progress",

    "cohama/lexima.vim", -- better autopair

    -- -- DAP for debugging
    -- "mfussenegger/nvim-dap",
    -- -- UI for DAP
    --
    -- { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap" } },

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

    -- {
    --     "glacambre/firenvim",
    --     -- if firenvim -> vim.g.started_by_firenvim == true -> lazy must be false.
    --     lazy = not vim.g.started_by_firenvim,
    --     build = function()
    --         vim.fn["firenvim#install"](0)
    --     end,
    -- },
}
