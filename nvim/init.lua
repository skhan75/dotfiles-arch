
-- Set background and colorscheme
vim.cmd("colorscheme forest_stream")

-- Transparency settings
vim.cmd([[
highlight Normal guibg=NONE ctermbg=NONE
highlight Folded guibg=NONE
highlight NonText guibg=NONE
highlight LineNr guibg=NONE
highlight EndOfBuffer guibg=NONE
]])

-- Automatically save changes to init.lua
vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost lua/plugins.lua source <afile> | PackerSync
augroup end
]])

require("plugins")
