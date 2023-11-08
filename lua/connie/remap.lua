-- open explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- search terms stay in middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- move selected region up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- format file
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- replace word curor is on
vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- quick fix hot keys
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.cmd([[
function! Scratch()
  split
  noswapfile hide enew
  setlocal buftype=nofile
  setlocal bufhidden=hide
  "setlocal nobuflisted
  "lcd ~
  file scratch
endfunction
]])
