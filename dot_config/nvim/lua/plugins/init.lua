require("utils.java_detect").setup_autocmd()

return {
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        opts = require "configs.conform",
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },

    {
        "mrcjkb/rustaceanvim",
        version = "^5", -- Recommended
        lazy = false,   -- This plugin is already lazy
    },

    {
        "rust-lang/rust.vim",
        ft = "rust",
        init = function()
            vim.g.rustfmt_autosave = 1
        end,
    },

    {
        "saecki/crates.nvim",
        ft = { "toml" },
        config = function()
            require("crates").setup()
        end,
    },

    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "pyright",
            },
        },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "tsx",
                "javascript",
                "typescript",
                "vimdoc",
                "html",
                "css",
                "python",
                "svelte",
                "haskell",
            },
        },
    },
    {
        "nvim-tree/nvim-tree.lua",
        opts = {
            git = {
                enable = true,
                ignore = true,
            },
            filters = {
                git_ignored = false,
            },
        },
    },
    {
        "nvim-svelte/nvim-svelte-snippets",
        dependencies = "L3MON4D3/LuaSnip",
        opts = {
            -- your configuration comes here
            -- or leave empty for defaults
        },
    },
    {
        "nvim-telescope/telescope-symbols.nvim",
        dependencies = { "nvim-telescope/telescope.nvim" },
    },
    {
        "mrjones2014/smart-splits.nvim",
        lazy = false,
    },
    {
        'nvim-java/nvim-java',
        event = "User JavaProjectDetected",
        config = function()
            require('java').setup({
                jdtls = {
                    capabilities = require('cmp_nvim_lsp').default_capabilities(),
                },
            })
            vim.lsp.enable('jdtls')
        end,
    },
    {
        "hrsh7th/nvim-cmp",
        opts = function()
            return require "configs.cmp"
        end,
    },
    -- lazy.nvim
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            -- add any options here
        },
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
        }
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
        config = function()
            require("dapui").setup()

            local dap, dapui = require("dap"), require("dapui")
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
        end,
    }
}
