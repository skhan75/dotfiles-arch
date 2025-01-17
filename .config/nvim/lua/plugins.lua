-- Ensure Packer is installed
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  vim.cmd([[packadd packer.nvim]])
end

-- Plugin configuration
return require("packer").startup(function(use)
  use("wbthomason/packer.nvim") -- Packer manages itself

  -- Speed up loading Lua modules in Neovim to improve startup time
  use { "lewis6991/impatient.nvim" }

  -- Autopairs for automatic closing of brackets
  use {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({
        check_ts = true,  -- Enable Treesitter integration
        disable_filetype = { "TelescopePrompt", "vim" },  -- Disable in specific filetypes
      })
    end
  }

  use {
    "romgrk/barbar.nvim",
    requires = { "kyazdani42/nvim-web-devicons" }
  }

  -- Treesitter for syntax highlighting and better code understanding
  use {
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
    config = function()
      local ok, treesitter = pcall(require, 'nvim-treesitter.configs')
      if ok then
        treesitter.setup {
          ensure_installed = { "c", "cpp", "lua", "java", "python", "javascript", "go", "markdown", "json", "yaml", "vim", "typescript", "elixir", "heex", "eex" },
          sync_install = false,
          ignore_install = { "" },
          auto_install = true,

          highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
          },
          autotage = {
            enable = true
          },
          incremental_selection = {
            enable = true,
            keymaps = {
              init_selection = "gnn",
              node_incremental = "grn",
              scope_incremental = "grc",
              node_decremental = "grm",
            },
          },
          indent = { enable = true },
          modules = {},
        }
      end
    end,
  }


  -- Colorschemes
  use("aliqyan-21/darkvoid.nvim")
  use("rockerBOO/boo-colorscheme-nvim")
  use("morhetz/gruvbox")
  use("ayu-theme/ayu-vim")
  use("akai54/2077.nvim")
  use("dracula/vim")
  use("p00f/alabaster.nvim")

  -- Tokyo Night
  use {
    "folke/tokyonight.nvim",
    config = function()
    end
  }

  -- Neovim Ayu
  use {
    "Shatur/neovim-ayu",
    config = function()
    end
  }

  use {
    "nvim-lualine/lualine.nvim",
    requires = {
      "nvim-tree/nvim-web-devicons",
      "arkav/lualine-lsp-progress",
    },
    config = function()
      local ok, lualine = pcall(require, "lualine")
      if not ok then
        return
      end

      -- If you want LSP progress, make sure you also have `arkav/lualine-lsp-progress` installed
      -- and require it somewhere before using the 'lsp_progress' component.
      -- E.g.: local lsp_progress = require("lualine-lsp-progress")

      lualine.setup({
        options = {
          theme = "auto",
          globalstatus = true,

          -- section_separators = { left = "", right = "" },
          -- component_separators = { left = "", right = "" },
          section_separators = { left = "", right = "" },
          component_separators = { left = "", right = "" },

          disabled_filetypes = {
            statusline = {}, -- list filetypes you don’t want to show lualine in
            winbar = {},
          },
        },

        sections = {
          lualine_a = { "mode" },            -- e.g., NORMAL, INSERT
          lualine_b = { "branch", "diff", "diagnostics" },
          lualine_c = {
            {
              "filename",
              file_status = true,  -- show [+]- etc. for modified files
              path = 1,            -- 1 = relative path
            },
            -- Uncomment if you have the "lualine-lsp-progress" plugin:
            {
              "lsp_progress",
              display_components = { "lsp_client_name", "spinner", "percentage" },
              colors = {
                percentage       = "#ffffff",
                title            = "#ffffff",
                message          = "#ffffff",
                spinner          = "#ffffff",
                lsp_client_name  = "#ffffff",
              },
            },
          },
          lualine_x = {
            "encoding",
            "fileformat",
            "filetype",
          },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },

        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { "filename" },
          lualine_x = { "location" },
          lualine_y = {},
          lualine_z = {},
        },

        -- Extra integrations
        extensions = { "fugitive", "nvim-tree", "quickfix" },
      })
    end
  }

  use {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  }

  use { "echasnovski/mini.icons", version = "*" }

  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup({
        -- Optional: Add any desired configuration here
      })
    end,
  }

  -- Nvim Tree File Explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
    config = function()
      local ok, nvim_tree = pcall(require, 'nvim-tree')
      if ok then
        nvim_tree.setup {
          -- hijack_netrw = true,
          hijack_netrw = false,                     -- Hijack netrw window
          disable_netrw = false,                   -- Keep netrw enabled
          -- open_on_setup = false,
          -- open_on_setup_file = false,
          hijack_directories = {
            enable = false,                        -- Disable opening the tree for directories
            auto_open = false,                     -- Disable auto-opening for directories
          },
        }
      end
    end
  }

  -- Telescope fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function()
      local ok, telescope = pcall(require, 'telescope')
      if ok then
        telescope.setup {
          defaults = {
            vimgrep_arguments = {
              'rg',
              '--color=never',
              '--no-heading',
              '--with-filename',
              '--line-number',
              '--column',
              '--smart-case'
            },
            prompt_prefix = "> ",
            selection_caret = "> ",
            entry_prefix = "  ",
            initial_mode = "insert",
            selection_strategy = "reset",
            sorting_strategy = "descending",
            layout_strategy = "horizontal",
            layout_config = {
              horizontal = {
                mirror = false,
              },
              vertical = {
                mirror = false,
              },
            },
            file_sorter = require'telescope.sorters'.get_fuzzy_file,
            file_ignore_patterns = {},
            generic_sorter = require'telescope.sorters'.get_generic_fuzzy_sorter,
            path_display = { "truncate" },
            winblend = 0,
            border = {},
            borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
            color_devicons = true,
            use_less = true,
            set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
            file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
            grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
            qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
            -- Developer configurations: Not meant for general override
            buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
          },
          extensions = {
            fzf = {
              fuzzy = true,                    -- false will only do exact matching
              override_generic_sorter = true,  -- override the generic sorter
              override_file_sorter = true,     -- override the file sorter
              case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
              -- the default case_mode is "smart_case"
            },
            media_files = {
              filetypes = {"png", "jpg", "mp4", "webm", "pdf"},
              find_cmd = "rg" -- find command (defaults to `fd`)
            },
            project = {
              base_dirs = {
                '~/workspace',
              },
              hidden_files = true, -- default: false
              theme = "dropdown",
              order_by = "asc",
              sync_with_nvim_tree = true, -- default: false
            }
          }
        }
        telescope.load_extension('fzf')
        telescope.load_extension('media_files')
        telescope.load_extension('file_browser')
        telescope.load_extension('project')
      end
    end
  }

  -- Telescope Extensions
  use { "nvim-telescope/telescope-media-files.nvim" }
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
  use { "nvim-telescope/telescope-project.nvim" }

  -- LSP Configuration and Plugins
  use {
    'williamboman/mason.nvim',
    config = function()
      require("mason").setup()
    end
  }

  use {
    'williamboman/mason-lspconfig.nvim',
    after = "mason.nvim",  -- Ensure this runs after mason.nvim
    config = function()
      require("mason-lspconfig").setup()
    end
  }

  use {
    'neovim/nvim-lspconfig',   -- Collection of configurations for the built-in LSP client
    after = "mason-lspconfig.nvim",  -- Ensure this runs after mason-lspconfig.nvim
    config = function()
      require('lsp_config')
    end
  }

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets',
    },
    config = function()
      local ok, cmp_lsp = pcall(require, 'cmp_lsp')
      if ok then
        cmp_lsp.setup()
      end
    end
  }

  -- Pretty printing errors
  use({
    "rcarriga/nvim-notify",
    config = function()
      -- If you have a modern version, this should work
      require("notify").setup({
        background_colour = "#1f2335",
        render = "compact",
        stages = "slide",
      })
      vim.notify = require("notify")
    end
  })

  use {
    'nvim-lua/lsp-status.nvim',
    config = function()
      local ok, lsp_status = pcall(require, 'lsp-status')
      if ok then
        lsp_status.config({
          status_symbol = '',
          indicator_errors = ' ',
          indicator_warnings = ' ',
          indicator_info = ' ',
          indicator_hint = ' ',
          indicator_ok = ' ',
          spinner_frames = {'⠋', '⠙', '⠹', '⠸', '⠼', '⠴', '⠦', '⠧', '⠇', '⠏'},
        })
      end
    end
  }

  use {
    'stevearc/aerial.nvim',
    config = function()
      local ok, aerial = pcall(require, 'aerial')
      if ok then
        aerial.setup({
          -- Choose which backends to use for symbol outlines
          backends = { "lsp", "treesitter", "markdown" },
          -- Customize aerial’s layout and position
          layout = {
            default_direction = 'prefer_right',
            min_width = 30,
          },
          manage_folds = true,
          highlight_closest = true,
          nerd_font = "auto",
          -- Control how aerial attaches to buffers
          attach_mode = 'global',

          -- Customize keymaps within the aerial buffer for navigation
          -- You can also set these in your normal configuration if you prefer
          keymaps = {
            ["<CR>"] = "actions.jump",         -- Jump to symbol definition on <CR>
            ["<2-LeftMouse>"] = "actions.jump", -- Jump to symbol definition on double-click
            ["<leader>a"] = "toggle",           -- Toggle aerial with <leader>a
            ["{"] = "actions.prev",
            ["}"] = "actions.next",
            ["[["] = "actions.prev_up",
            ["]]"] = "actions.next_up",
            ["<C-j>"] = "actions.down_and_scroll",
            ["<C-k>"] = "actions.up_and_scroll",
          },
        })
      else
        vim.notify("Error loading Aerial", vim.log.levels.ERROR)
      end
    end
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end
  }

  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {}
    end
  }

  use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })

  use {
    'ThePrimeagen/harpoon',
    requires = { 'nvim-lua/plenary.nvim' } -- Harpoon depends on plenary.nvim
  }

  use {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup({
        filetypes = { "html", "javascript", "typescriptreact", "vue" }, -- Enable for these file types
        skip_tags = { "area", "base", "br", "col", "embed", "hr", "img", "input", "link", "meta", "param", "source", "track", "wbr" }
      })
    end
  }

  -- Markdown
  use {
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  }

  -- Formatting
  use { 'mhartington/formatter.nvim' }

end)

