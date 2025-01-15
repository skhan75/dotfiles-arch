local M = {}

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function M.setup()
  -- Map Esc to jk in Insert Mode
  map('i', 'jk', '<Esc>')

  -- -- Set leader to Space
  map(
    "",
    "<Space>",
    "<Nop>",
    { noremap = true, silent = true }
  )

  -- Move text up and down
  map("n", "J", ":m .+1<CR>==")
  map("n", "K", ":m .-2<CR>==")
  map("v", "K", ":m '<-2<CR>gv=gv")
  map("v", "J", ":m '>+1<CR>gv=gv")

  -- Resize with arrows
  map("n", "<C-Up>", ":resize -2<CR>")
  map("n", "<C-Down>", ":resize +2<CR>")
  map("n", "<C-Left>", ":vertical resize -2<CR>")
  map("n", "<C-Right>", ":vertical resize +2<CR>")

  -- Save and Quit
  map("n", "<leader>w", "<cmd>w!<CR>")
  map("n", "<leader>q", "<cmd>q!<CR>")

  -- NvimTree Toggle
  map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")



end

M.setup()
