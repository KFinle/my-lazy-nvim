local M = {}

function M.setup()
    require("bufferline").setup({
        options = {
            numbers = "ordinal",
            seperator_style = "slant" or "padded_slant",
            show_tab_indicators = true,
            show_buffer_close_icons = true,
            show_close_icon = false,
            indicator = {
                icon = "| ",
                style = "icon",
            },

            buffer_close_icon = "󰅖",
            modified_icon = "●",
            close_icon = "",
            left_trunc_marker = "",
            max_name_length = 18,
            max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
            truncate_names = true, -- whether or not tab names should be truncated
            tab_size = 18,
        },

        vim.keymap.set("n", "<leader>1", '<cmd>lua require("bufferline").go_to(1)<CR>'),
        vim.keymap.set("n", "<leader>2", '<cmd>lua require("bufferline").go_to(2)<CR>'),
        vim.keymap.set("n", "<leader>3", '<cmd>lua require("bufferline").go_to(3)<CR>'),
        vim.keymap.set("n", "<leader>4", '<cmd>lua require("bufferline").go_to(4)<CR>'),
        vim.keymap.set("n", "<leader>5", '<cmd>lua require("bufferline").go_to(5)<CR>'),
        vim.keymap.set("n", "<leader>6", '<cmd>lua require("bufferline").go_to(6)<CR>'),
        vim.keymap.set("n", "<leader>7", '<cmd>lua require("bufferline").go_to(7)<CR>'),
        vim.keymap.set("n", "<leader>8", '<cmd>lua require("bufferline").go_to(8)<CR>'),
        vim.keymap.set("n", "<leader>9", '<cmd>lua require("bufferline").go_to(9)<CR>'),
        vim.keymap.set("n", "<leader>$", '<cmd>lua require("bufferline").go_to(-1)<CR>'),
    })
end

return M
