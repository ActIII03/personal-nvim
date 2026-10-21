return {
    -- Debugging
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "rcarriga/nvim-dap-ui", -- A UI for nvim-dap
            "nvim-neotest/nvim-nio", -- Required dependency for newer versions of dap-ui
        },
    },

    {
        "theHamsta/nvim-dap-virtual-text",
        dependencies = { "mfussenegger/nvim-dap" },
    },
}
