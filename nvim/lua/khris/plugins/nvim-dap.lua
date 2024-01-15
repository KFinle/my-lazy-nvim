return {
    "mfussenegger/nvim-dap", -- debugging
    config = function()
        local dap = require("dap")

        dap.adapters.coreclr = {
            type = "executable",
            command = "/usr/local/bin/netcoredbg/netcoredbg",
            args = { "--interpreter=vscode" },
        }

        dap.configurations.cs = {
            {
                type = "coreclr",
                name = "launch - netcoredbg",
                request = "launch",
                program = function()
                    return vim.fn.input("Path to dll", vim.fn.getcwd() .. "/bin/Debug/", "file")
                end,
            },
        }

        dap.adapters.firefox = {
            type = "executable",
            command = "node",
            args = { os.getenv("HOME") .. "/vscode-firefox-debug/dist/adapter.bundle.js" },
        }

        dap.configurations.typescript = {
            {
                name = "Debug with Firefox",
                type = "firefox",
                request = "launch",
                reAttach = true,
                url = "http://localhost:3000",
                webRoot = "${workspaceFolder}",
                firefoxExecutable = "/usr/bin/firefox",
            },
        }

        dap.adapters.php = {
            type = "executable",
            command = "node",
            args = { "/vscode-php-debug/out/phpDebug.js" },
        }

        dap.configurations.php = {
            {
                type = "php",
                request = "launch",
                name = "Listen for Xdebug",
                port = 9000,
            },
        }

        local keymap = vim.keymap -- for conciseness
        keymap.set("n", "<F5>", "<Cmd>lua require'dap'.continue()<CR>")
        keymap.set("n", "<F10>", "<Cmd>lua require'dap'.step_over()<CR>")
        keymap.set("n", "<F11>", "<Cmd>lua require'dap'.step_into()<CR>")
        keymap.set("n", "<F12>", "<Cmd>lua require'dap'.step_out()<CR>")
        keymap.set("n", "<Leader>b", " <Cmd>lua require'dap'.toggle_breakpoint()<CR>")
        keymap.set(
            "n",
            "<Leader>B",
            " <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>"
        )
        keymap.set(
            "n",
            "<Leader>lp ",
            "<Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>"
        )
        keymap.set("n", "<Leader>dr ", "<Cmd>lua require'dap'.repl.open()<CR>")
        keymap.set("n", "<Leader>dl ", "<Cmd>lua require'dap'.run_last()<CR>")
    end,
}