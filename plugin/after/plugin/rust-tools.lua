local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<leader>A", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
  tools = {
    hover_actions = {
      auto_focus = true,
    },
  },
})

-- :help dap-mapping
local nvim_dap = require('dap')
vim.keymap.set("n", "\\b", function() nvim_dap.toggle_breakpoint() end)
vim.keymap.set("n", "\\B", function() nvim_dap.set_breakpoint() end)
vim.keymap.set("n", "<F9>", function() nvim_dap.continue() end)
vim.keymap.set("n", "<F10>", function() nvim_dap.step_into() end)
vim.keymap.set("n", "<F11>", function() nvim_dap.step_over() end)
vim.keymap.set("n", "<F12>", function() nvim_dap.step_out() end)
