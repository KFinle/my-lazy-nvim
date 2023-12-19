return {

    -- bufferline
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    config = function()
        require("khris.plugins.config.bufferline").setup()
    end,
    event = "BufReadPre",
}
