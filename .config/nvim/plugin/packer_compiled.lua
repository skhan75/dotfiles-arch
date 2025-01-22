-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/khansami/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?.lua;/home/khansami/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?/init.lua;/home/khansami/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?.lua;/home/khansami/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/khansami/.cache/nvim/packer_hererocks/2.1.1713484068/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["2077.nvim"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/2077.nvim",
    url = "https://github.com/akai54/2077.nvim"
  },
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["aerial.nvim"] = {
    config = { "\27LJ\2\nπ\4\0\0\6\0\17\0\0256\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\nÄ9\2\3\0015\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\0045\5\t\0=\5\n\4B\2\2\1X\2\bÄ6\2\v\0009\2\f\2'\4\r\0006\5\v\0009\5\14\0059\5\15\0059\5\16\5B\2\3\1K\0\1\0\nERROR\vlevels\blog\25Error loading Aerial\vnotify\bvim\fkeymaps\1\0\t\a]]\20actions.next_up\n<C-k>\26actions.up_and_scroll\n<C-j>\28actions.down_and_scroll\6{\17actions.prev\a[[\20actions.prev_up\6}\17actions.next\14<leader>a\vtoggle\18<2-LeftMouse>\17actions.jump\t<CR>\17actions.jump\vlayout\1\0\2\14min_width\3\30\22default_direction\17prefer_right\rbackends\1\0\a\14nerd_font\tauto\22highlight_closest\2\17manage_folds\2\16attach_mode\vglobal\fkeymaps\0\vlayout\0\rbackends\0\1\4\0\0\blsp\15treesitter\rmarkdown\nsetup\vaerial\frequire\npcall\0" },
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/aerial.nvim",
    url = "https://github.com/stevearc/aerial.nvim"
  },
  ["alabaster.nvim"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/alabaster.nvim",
    url = "https://github.com/p00f/alabaster.nvim"
  },
  ["ayu-vim"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/ayu-vim",
    url = "https://github.com/ayu-theme/ayu-vim"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["boo-colorscheme-nvim"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/boo-colorscheme-nvim",
    url = "https://github.com/rockerBOO/boo-colorscheme-nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["darkvoid.nvim"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/darkvoid.nvim",
    url = "https://github.com/aliqyan-21/darkvoid.nvim"
  },
  ["formatter.nvim"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["glow.nvim"] = {
    config = { "\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\nstyle\tdark\nwidth\3x\nsetup\tglow\frequire\0" },
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/glow.nvim",
    url = "https://github.com/ellisonleao/glow.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  harpoon = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["headlines.nvim"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/headlines.nvim",
    url = "https://github.com/lukas-reineke/headlines.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["leap.nvim"] = {
    config = { "\27LJ\2\nH\0\0\5\0\4\0\n6\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\3Ä9\2\3\0014\4\0\0B\2\2\1K\0\1\0\nsetup\tleap\frequire\npcall\0" },
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/leap.nvim",
    url = "https://github.com/ggandor/leap.nvim"
  },
  ["lsp-status.nvim"] = {
    config = { "\27LJ\2\nú\2\0\0\6\0\a\0\f6\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\5Ä9\2\3\0015\4\4\0005\5\5\0=\5\6\4B\2\2\1K\0\1\0\19spinner_frames\1\v\0\0\b‚†ã\b‚†ô\b‚†π\b‚†∏\b‚†º\b‚†¥\b‚†¶\b‚†ß\b‚†á\b‚†è\1\0\a\19indicator_hint\tÔÅô \17indicator_ok\tÔÅò \19indicator_info\tÔÅö \19spinner_frames\0\23indicator_warnings\tÔÅ± \21indicator_errors\tÔÅó \18status_symbol\5\vconfig\15lsp-status\frequire\npcall\0" },
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/lsp-status.nvim",
    url = "https://github.com/nvim-lua/lsp-status.nvim"
  },
  ["lualine-lsp-progress"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/lualine-lsp-progress",
    url = "https://github.com/arkav/lualine-lsp-progress"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nØ\t\0\0\t\0(\0=6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\4\r\0005\5\4\0005\6\5\0=\6\6\0055\6\a\0=\6\b\0055\6\t\0004\a\0\0=\a\n\0064\a\0\0=\a\v\6=\6\f\5=\5\14\0045\5\16\0005\6\15\0=\6\17\0055\6\18\0=\6\19\0054\6\3\0005\a\20\0>\a\1\0065\a\21\0005\b\22\0=\b\23\a5\b\24\0=\b\25\a>\a\2\6=\6\26\0055\6\27\0=\6\28\0055\6\29\0=\6\30\0055\6\31\0=\6 \5=\5!\0045\5\"\0004\6\0\0=\6\17\0054\6\0\0=\6\19\0055\6#\0=\6\26\0055\6$\0=\6\28\0054\6\0\0=\6\30\0054\6\0\0=\6 \5=\5%\0045\5&\0=\5'\4B\2\2\1K\0\1\0\15extensions\1\4\0\0\rfugitive\14nvim-tree\rquickfix\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\6\14lualine_x\0\14lualine_y\0\14lualine_c\0\14lualine_z\0\14lualine_b\0\14lualine_a\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\vcolors\1\0\5\ntitle\f#ffffff\fmessage\f#ffffff\15percentage\f#ffffff\fspinner\f#ffffff\20lsp_client_name\f#ffffff\23display_components\1\4\0\0\20lsp_client_name\fspinner\15percentage\1\2\2\0\17lsp_progress\23display_components\0\vcolors\0\1\2\2\0\rfilename\16file_status\2\tpath\3\1\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\6\14lualine_x\0\14lualine_y\0\14lualine_c\0\14lualine_z\0\14lualine_b\0\14lualine_a\0\1\2\0\0\tmode\foptions\1\0\4\foptions\0\22inactive_sections\0\rsections\0\15extensions\0\23disabled_filetypes\vwinbar\15statusline\1\0\2\15statusline\0\vwinbar\0\25component_separators\1\0\2\tleft\bÓÇΩ\nright\bÓÇø\23section_separators\1\0\2\tleft\bÓÇ∏\nright\bÓÇ∫\1\0\5\23disabled_filetypes\0\23section_separators\0\17globalstatus\2\25component_separators\0\ntheme\tauto\nsetup\flualine\frequire\npcall\0" },
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    after = { "nvim-lspconfig" },
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20mason-lspconfig\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/opt/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    after = { "mason-lspconfig.nvim" },
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["mini.icons"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/mini.icons",
    url = "https://github.com/echasnovski/mini.icons"
  },
  ["neovim-ayu"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/neovim-ayu",
    url = "https://github.com/Shatur/neovim-ayu"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nê\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\21disable_filetype\1\3\0\0\20TelescopePrompt\bvim\1\0\2\21disable_filetype\0\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nG\0\0\4\0\4\0\t6\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\2Ä9\2\3\1B\2\1\1K\0\1\0\nsetup\fcmp_lsp\frequire\npcall\0" },
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15lsp_config\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\nâ\1\0\0\4\0\5\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0006\1\0\0'\3\1\0B\1\2\2=\1\1\0K\0\1\0\bvim\1\0\3\22background_colour\f#1f2335\vstages\nslide\vrender\fcompact\nsetup\vnotify\frequire\0" },
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n≤\1\0\0\6\0\a\0\f6\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\5Ä9\2\3\0015\4\4\0005\5\5\0=\5\6\4B\2\2\1K\0\1\0\23hijack_directories\1\0\2\venable\1\14auto_open\1\1\0\3\17hijack_netrw\1\23hijack_directories\0\18disable_netrw\1\nsetup\14nvim-tree\frequire\npcall\0" },
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÜ\5\0\0\a\0\20\0\0266\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\19Ä9\2\3\0015\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\0045\5\t\0=\5\n\0045\5\v\0=\5\f\0045\5\r\0005\6\14\0=\6\15\5=\5\16\0045\5\17\0=\5\18\0044\5\0\0=\5\19\4B\2\2\1K\0\1\0\fmodules\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\21node_incremental\bgrn\1\0\2\venable\2\fkeymaps\0\rautotage\1\0\1\venable\2\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\19ignore_install\1\2\0\0\5\21ensure_installed\1\0\t\vindent\0\26incremental_selection\0\14highlight\0\fmodules\0\21ensure_installed\0\rautotage\0\17auto_install\2\19ignore_install\0\17sync_install\1\1\16\0\0\6c\bcpp\blua\tjava\vpython\15javascript\ago\rmarkdown\tjson\tyaml\bvim\15typescript\velixir\theex\beex\nsetup\28nvim-treesitter.configs\frequire\npcall\0" },
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    config = { "\27LJ\2\nÔ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14skip_tags\1\15\0\0\tarea\tbase\abr\bcol\nembed\ahr\bimg\ninput\tlink\tmeta\nparam\vsource\ntrack\bwbr\14filetypes\1\0\2\14skip_tags\0\14filetypes\0\1\5\0\0\thtml\15javascript\20typescriptreact\bvue\nsetup\20nvim-ts-autotag\frequire\0" },
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/telescope-project.nvim",
    url = "https://github.com/nvim-telescope/telescope-project.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n£\r\0\0\t\0003\0W6\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2PÄ9\2\3\0015\4#\0005\5\5\0005\6\4\0=\6\6\0055\6\b\0005\a\a\0=\a\t\0065\a\n\0=\a\v\6=\6\f\0056\6\1\0'\b\r\0B\6\2\0029\6\14\6=\6\15\0054\6\0\0=\6\16\0056\6\1\0'\b\r\0B\6\2\0029\6\17\6=\6\18\0055\6\19\0=\6\20\0054\6\0\0=\6\21\0055\6\22\0=\6\23\0055\6\24\0=\6\25\0056\6\1\0'\b\26\0B\6\2\0029\6\27\0069\6\28\6=\6\29\0056\6\1\0'\b\26\0B\6\2\0029\6\30\0069\6\28\6=\6\31\0056\6\1\0'\b\26\0B\6\2\0029\6 \0069\6\28\6=\6!\0056\6\1\0'\b\26\0B\6\2\0029\6\"\6=\6\"\5=\5$\0045\5&\0005\6%\0=\6'\0055\6)\0005\a(\0=\a*\6=\6+\0055\6-\0005\a,\0=\a.\6=\6/\5=\0050\4B\2\2\0019\0021\1'\4'\0B\2\2\0019\0021\1'\4+\0B\2\2\0019\0021\1'\0042\0B\2\2\0019\0021\1'\4/\0B\2\2\1K\0\1\0\17file_browser\19load_extension\15extensions\fproject\14base_dirs\1\0\5\14base_dirs\0\24sync_with_nvim_tree\2\rorder_by\basc\ntheme\rdropdown\17hidden_files\2\1\2\0\0\16~/workspace\16media_files\14filetypes\1\0\2\rfind_cmd\arg\14filetypes\0\1\6\0\0\bpng\bjpg\bmp4\twebm\bpdf\bfzf\1\0\3\bfzf\0\fproject\0\16media_files\0\1\0\4\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\2\nfuzzy\2\rdefaults\1\0\2\15extensions\0\rdefaults\0\27buffer_previewer_maker\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚îå\b‚îê\b‚îò\b‚îî\vborder\17path_display\1\2\0\0\rtruncate\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\16file_sorter\19get_fuzzy_file\22telescope.sorters\18layout_config\rvertical\1\0\1\vmirror\1\15horizontal\1\0\2\15horizontal\0\rvertical\0\1\0\1\vmirror\1\22vimgrep_arguments\1\0\23\17path_display\0\vborder\0\18prompt_prefix\a> \25file_ignore_patterns\0\16borderchars\0\rwinblend\3\0\16file_sorter\0\19generic_sorter\0\20selection_caret\a> \18layout_config\0\22vimgrep_arguments\0\20layout_strategy\15horizontal\21qflist_previewer\0\19grep_previewer\0\27buffer_previewer_maker\0\19file_previewer\0\fset_env\0\ruse_less\2\19color_devicons\2\21sorting_strategy\15descending\23selection_strategy\nreset\17initial_mode\vinsert\17entry_prefix\a  \1\b\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\nsetup\14telescope\frequire\npcall\0" },
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  treesj = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vtreesj\frequire\0" },
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/treesj",
    url = "https://github.com/Wansmer/treesj"
  },
  vim = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/vim",
    url = "https://github.com/dracula/vim"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/vim-markdown",
    url = "https://github.com/plasticboy/vim-markdown"
  },
  ["vim-pencil"] = {
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/vim-pencil",
    url = "https://github.com/preservim/vim-pencil"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/khansami/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lsp-status.nvim
time([[Config for lsp-status.nvim]], true)
try_loadstring("\27LJ\2\nú\2\0\0\6\0\a\0\f6\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\5Ä9\2\3\0015\4\4\0005\5\5\0=\5\6\4B\2\2\1K\0\1\0\19spinner_frames\1\v\0\0\b‚†ã\b‚†ô\b‚†π\b‚†∏\b‚†º\b‚†¥\b‚†¶\b‚†ß\b‚†á\b‚†è\1\0\a\19indicator_hint\tÔÅô \17indicator_ok\tÔÅò \19indicator_info\tÔÅö \19spinner_frames\0\23indicator_warnings\tÔÅ± \21indicator_errors\tÔÅó \18status_symbol\5\vconfig\15lsp-status\frequire\npcall\0", "config", "lsp-status.nvim")
time([[Config for lsp-status.nvim]], false)
-- Config for: glow.nvim
time([[Config for glow.nvim]], true)
try_loadstring("\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\nstyle\tdark\nwidth\3x\nsetup\tglow\frequire\0", "config", "glow.nvim")
time([[Config for glow.nvim]], false)
-- Config for: treesj
time([[Config for treesj]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vtreesj\frequire\0", "config", "treesj")
time([[Config for treesj]], false)
-- Config for: aerial.nvim
time([[Config for aerial.nvim]], true)
try_loadstring("\27LJ\2\nπ\4\0\0\6\0\17\0\0256\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\nÄ9\2\3\0015\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\0045\5\t\0=\5\n\4B\2\2\1X\2\bÄ6\2\v\0009\2\f\2'\4\r\0006\5\v\0009\5\14\0059\5\15\0059\5\16\5B\2\3\1K\0\1\0\nERROR\vlevels\blog\25Error loading Aerial\vnotify\bvim\fkeymaps\1\0\t\a]]\20actions.next_up\n<C-k>\26actions.up_and_scroll\n<C-j>\28actions.down_and_scroll\6{\17actions.prev\a[[\20actions.prev_up\6}\17actions.next\14<leader>a\vtoggle\18<2-LeftMouse>\17actions.jump\t<CR>\17actions.jump\vlayout\1\0\2\14min_width\3\30\22default_direction\17prefer_right\rbackends\1\0\a\14nerd_font\tauto\22highlight_closest\2\17manage_folds\2\16attach_mode\vglobal\fkeymaps\0\vlayout\0\rbackends\0\1\4\0\0\blsp\15treesitter\rmarkdown\nsetup\vaerial\frequire\npcall\0", "config", "aerial.nvim")
time([[Config for aerial.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nØ\t\0\0\t\0(\0=6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\4\r\0005\5\4\0005\6\5\0=\6\6\0055\6\a\0=\6\b\0055\6\t\0004\a\0\0=\a\n\0064\a\0\0=\a\v\6=\6\f\5=\5\14\0045\5\16\0005\6\15\0=\6\17\0055\6\18\0=\6\19\0054\6\3\0005\a\20\0>\a\1\0065\a\21\0005\b\22\0=\b\23\a5\b\24\0=\b\25\a>\a\2\6=\6\26\0055\6\27\0=\6\28\0055\6\29\0=\6\30\0055\6\31\0=\6 \5=\5!\0045\5\"\0004\6\0\0=\6\17\0054\6\0\0=\6\19\0055\6#\0=\6\26\0055\6$\0=\6\28\0054\6\0\0=\6\30\0054\6\0\0=\6 \5=\5%\0045\5&\0=\5'\4B\2\2\1K\0\1\0\15extensions\1\4\0\0\rfugitive\14nvim-tree\rquickfix\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\6\14lualine_x\0\14lualine_y\0\14lualine_c\0\14lualine_z\0\14lualine_b\0\14lualine_a\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\vcolors\1\0\5\ntitle\f#ffffff\fmessage\f#ffffff\15percentage\f#ffffff\fspinner\f#ffffff\20lsp_client_name\f#ffffff\23display_components\1\4\0\0\20lsp_client_name\fspinner\15percentage\1\2\2\0\17lsp_progress\23display_components\0\vcolors\0\1\2\2\0\rfilename\16file_status\2\tpath\3\1\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\6\14lualine_x\0\14lualine_y\0\14lualine_c\0\14lualine_z\0\14lualine_b\0\14lualine_a\0\1\2\0\0\tmode\foptions\1\0\4\foptions\0\22inactive_sections\0\rsections\0\15extensions\0\23disabled_filetypes\vwinbar\15statusline\1\0\2\15statusline\0\vwinbar\0\25component_separators\1\0\2\tleft\bÓÇΩ\nright\bÓÇø\23section_separators\1\0\2\tleft\bÓÇ∏\nright\bÓÇ∫\1\0\5\23disabled_filetypes\0\23section_separators\0\17globalstatus\2\25component_separators\0\ntheme\tauto\nsetup\flualine\frequire\npcall\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nê\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\21disable_filetype\1\3\0\0\20TelescopePrompt\bvim\1\0\2\21disable_filetype\0\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-surround
time([[Config for nvim-surround]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0", "config", "nvim-surround")
time([[Config for nvim-surround]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\nâ\1\0\0\4\0\5\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0006\1\0\0'\3\1\0B\1\2\2=\1\1\0K\0\1\0\bvim\1\0\3\22background_colour\f#1f2335\vstages\nslide\vrender\fcompact\nsetup\vnotify\frequire\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n£\r\0\0\t\0003\0W6\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2PÄ9\2\3\0015\4#\0005\5\5\0005\6\4\0=\6\6\0055\6\b\0005\a\a\0=\a\t\0065\a\n\0=\a\v\6=\6\f\0056\6\1\0'\b\r\0B\6\2\0029\6\14\6=\6\15\0054\6\0\0=\6\16\0056\6\1\0'\b\r\0B\6\2\0029\6\17\6=\6\18\0055\6\19\0=\6\20\0054\6\0\0=\6\21\0055\6\22\0=\6\23\0055\6\24\0=\6\25\0056\6\1\0'\b\26\0B\6\2\0029\6\27\0069\6\28\6=\6\29\0056\6\1\0'\b\26\0B\6\2\0029\6\30\0069\6\28\6=\6\31\0056\6\1\0'\b\26\0B\6\2\0029\6 \0069\6\28\6=\6!\0056\6\1\0'\b\26\0B\6\2\0029\6\"\6=\6\"\5=\5$\0045\5&\0005\6%\0=\6'\0055\6)\0005\a(\0=\a*\6=\6+\0055\6-\0005\a,\0=\a.\6=\6/\5=\0050\4B\2\2\0019\0021\1'\4'\0B\2\2\0019\0021\1'\4+\0B\2\2\0019\0021\1'\0042\0B\2\2\0019\0021\1'\4/\0B\2\2\1K\0\1\0\17file_browser\19load_extension\15extensions\fproject\14base_dirs\1\0\5\14base_dirs\0\24sync_with_nvim_tree\2\rorder_by\basc\ntheme\rdropdown\17hidden_files\2\1\2\0\0\16~/workspace\16media_files\14filetypes\1\0\2\rfind_cmd\arg\14filetypes\0\1\6\0\0\bpng\bjpg\bmp4\twebm\bpdf\bfzf\1\0\3\bfzf\0\fproject\0\16media_files\0\1\0\4\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\2\nfuzzy\2\rdefaults\1\0\2\15extensions\0\rdefaults\0\27buffer_previewer_maker\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚îå\b‚îê\b‚îò\b‚îî\vborder\17path_display\1\2\0\0\rtruncate\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\16file_sorter\19get_fuzzy_file\22telescope.sorters\18layout_config\rvertical\1\0\1\vmirror\1\15horizontal\1\0\2\15horizontal\0\rvertical\0\1\0\1\vmirror\1\22vimgrep_arguments\1\0\23\17path_display\0\vborder\0\18prompt_prefix\a> \25file_ignore_patterns\0\16borderchars\0\rwinblend\3\0\16file_sorter\0\19generic_sorter\0\20selection_caret\a> \18layout_config\0\22vimgrep_arguments\0\20layout_strategy\15horizontal\21qflist_previewer\0\19grep_previewer\0\27buffer_previewer_maker\0\19file_previewer\0\fset_env\0\ruse_less\2\19color_devicons\2\21sorting_strategy\15descending\23selection_strategy\nreset\17initial_mode\vinsert\17entry_prefix\a  \1\b\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\nsetup\14telescope\frequire\npcall\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n≤\1\0\0\6\0\a\0\f6\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\5Ä9\2\3\0015\4\4\0005\5\5\0=\5\6\4B\2\2\1K\0\1\0\23hijack_directories\1\0\2\venable\1\14auto_open\1\1\0\3\17hijack_netrw\1\23hijack_directories\0\18disable_netrw\1\nsetup\14nvim-tree\frequire\npcall\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÜ\5\0\0\a\0\20\0\0266\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\19Ä9\2\3\0015\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\0045\5\t\0=\5\n\0045\5\v\0=\5\f\0045\5\r\0005\6\14\0=\6\15\5=\5\16\0045\5\17\0=\5\18\0044\5\0\0=\5\19\4B\2\2\1K\0\1\0\fmodules\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\21node_incremental\bgrn\1\0\2\venable\2\fkeymaps\0\rautotage\1\0\1\venable\2\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\19ignore_install\1\2\0\0\5\21ensure_installed\1\0\t\vindent\0\26incremental_selection\0\14highlight\0\fmodules\0\21ensure_installed\0\rautotage\0\17auto_install\2\19ignore_install\0\17sync_install\1\1\16\0\0\6c\bcpp\blua\tjava\vpython\15javascript\ago\rmarkdown\tjson\tyaml\bvim\15typescript\velixir\theex\beex\nsetup\28nvim-treesitter.configs\frequire\npcall\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nG\0\0\4\0\4\0\t6\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\2Ä9\2\3\1B\2\1\1K\0\1\0\nsetup\fcmp_lsp\frequire\npcall\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-ts-autotag
time([[Config for nvim-ts-autotag]], true)
try_loadstring("\27LJ\2\nÔ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14skip_tags\1\15\0\0\tarea\tbase\abr\bcol\nembed\ahr\bimg\ninput\tlink\tmeta\nparam\vsource\ntrack\bwbr\14filetypes\1\0\2\14skip_tags\0\14filetypes\0\1\5\0\0\thtml\15javascript\20typescriptreact\bvue\nsetup\20nvim-ts-autotag\frequire\0", "config", "nvim-ts-autotag")
time([[Config for nvim-ts-autotag]], false)
-- Config for: neovim-ayu
time([[Config for neovim-ayu]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "neovim-ayu")
time([[Config for neovim-ayu]], false)
-- Config for: leap.nvim
time([[Config for leap.nvim]], true)
try_loadstring("\27LJ\2\nH\0\0\5\0\4\0\n6\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\3Ä9\2\3\0014\4\0\0B\2\2\1K\0\1\0\nsetup\tleap\frequire\npcall\0", "config", "leap.nvim")
time([[Config for leap.nvim]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd mason-lspconfig.nvim ]]

-- Config for: mason-lspconfig.nvim
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20mason-lspconfig\frequire\0", "config", "mason-lspconfig.nvim")

vim.cmd [[ packadd nvim-lspconfig ]]

-- Config for: nvim-lspconfig
try_loadstring("\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15lsp_config\frequire\0", "config", "nvim-lspconfig")

time([[Sequenced loading]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
