return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
        disable_italics = false,
        colors = {
            -- Monotone shades
            base00 = "#EAEAEA", -- Background
            base01 = "#3f4241", -- UI elements
            base02 = "#D6DAD8", -- Selection (FIXED)
            base03 = "#6F7572", -- Comments (FIXED)
            base04 = "#333534",
            base05 = "#262827", -- Main text
            base06 = "#262827",
            base07 = "#333534",
        
            -- Accents (kept muted)
            base08 = "#4a514d",
            base09 = "#313734",
            base0A = "#67726c",
            base0B = "#58615d",
            base0C = "#505854",
            base0D = "#59635e",
            base0E = "#555e59",
            base0F = "#4f5753",
        }

        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
