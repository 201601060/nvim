return {
    {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup({
                icon = false,
            })

            vim.keymap.set("n", "<leader>tt", function()
                require("trouble").toggle({ mode = "diagnostics" })
            end)

            vim.keymap.set("n", "[d", function()
                require("trouble").next({ mode = "diagnostics", skip_groups = true, jump = true });
            end)

            vim.keymap.set("n", "]d", function()
                require("trouble").prev({ mode = "diagnostics", skip_groups = true, jump = true });
            end)
        end,
    },
}
