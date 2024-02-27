--https://github.com/mfussenegger/nvim-dap/
-- Import required modules
local dap = require("dap")

local function activate_virtualenv()
	local cwd = vim.fn.getcwd()
	local activate_script = cwd
		.. ((vim.fn.executable(cwd .. "/venv/bin/python") == 1) and "/venv/bin/activate" or "/.venv/bin/activate")
	local python_executable = vim.fn.trim(vim.fn.system("which python")) -- Get the path to the Python executable

	-- Attempt to source the virtualenv activation script and modify sys.path in one command
	vim.fn.system(
		"bash -c 'source "
			.. activate_script
			.. ' && python -c "import sys; sys.path.append(\\"'
			.. cwd
			.. '/tests\\")"\''
	)

	print("Activated venv with Python executable at: " .. python_executable)
	return python_executable -- Return the path for further use if needed
end

-- Setup for 'dap.adapters.python' remains unchanged as it's already quite streamlined
dap.adapters.python = {
	type = "executable",
	command = "python", -- Consider dynamically determining this path based on the active virtualenv
	args = { "-m", "debugpy.adapter" },
}

-- Configuration for Python debugging
-- doc -> :h dap-launch-json
dap.configurations.python = {
	{
		-- This configuration is for debugging Python unittests
		type = "python",
		request = "launch",
		name = "Python: Unittest Discovery",
		id = "1",
		description = "unittest",
		module = "unittest", -- Specify the module to run
		args = { "discover", "-s", "${workspaceFolder}/tests", "-p", "test_*.py" },
		-- Use pythonPath to dynamically set the Python interpreter if needed
		pythonPath = function()
			-- Assumes activate_virtualenv returns the path to the Python executable in the virtual environment
			return activate_virtualenv()
		end,
		cwd = "${workspaceFolder}", -- Ensure the working directory is set to your project root
		stopOnEntry = false,
		console = "integratedTerminal",
	},
	{
		-- This configuration is for debugging
		type = "python",
		request = "launch",
		name = "RunnerEnvironment",
		id = "2",
		description = "runner",
		program = "/tmp/run_runner.py",
		args = {},
		-- Use pythonPath to dynamically set the Python interpreter if needed
		pythonPath = function()
			-- Assumes activate_virtualenv returns the path to the Python executable in the virtual environment
			return activate_virtualenv()
		end,
		cwd = "${workspaceFolder}", -- Ensure the working directory is set to your project root
		stopOnEntry = false,
		console = "integratedTerminal",
	},
}

-- DAP key mappings
vim.api.nvim_set_keymap("n", "<leader>du", ':lua require"dap".continue()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>do", ':lua require"dap".step_over()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>di", ':lua require"dap".step_into()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>df", ':lua require"dap".step_out()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap(
	"n",
	"<Leader>tb",
	':lua require"dap".toggle_breakpoint()<CR>',
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<Leader>db", ':lua require"dap".set_breakpoint()<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap(
	"n",
	"<Leader>lp",
	':lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>',
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<Leader>dr", ':lua require"dap".repl.open()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>dl", ':lua require"dap".run_last()<CR>', { noremap = true, silent = true })
