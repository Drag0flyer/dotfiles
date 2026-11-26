    return {
        {
            "neovim/nvim-lspconfig",
            opts = {
                servers = {
                    clangd = {
                        cmd = {
                            "clangd",
                            "--background-index",
                            "-j=2",
                            "--malloc-trim",
                            "--pch-storage=disk",
                        },
                    },
                },
            },
        },
    }
